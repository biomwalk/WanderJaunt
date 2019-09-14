import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class SiteExplorer extends StatefulWidget {
  String surl;
  SiteExplorer(this.surl);
  @override
  _SiteExplorerState createState() => _SiteExplorerState(surl);
} //SiteExplorer

class _SiteExplorerState extends State<SiteExplorer> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();
  String surl;
  _SiteExplorerState(this.surl);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Careers'),
        // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
        actions: <Widget>[
          NavigationControls(_controller.future),
          Menu(_controller.future, () => _favorites),
          _bookmarkButton(),
        ], //actions Widget
      ), //appbar
      body: WebView(
        initialUrl: surl,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        }, //onWebViewCreated
      ), //Webview
    ); //Scaffold
  } //BuildContext

  bool _isFavorited = false;
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      } //else
    }); //setState
  } //toggleFavorite

  _bookmarkButton() {
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder: (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (controller.hasData) {
          return IconButton(
            icon: (_isFavorited ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border)),
            onPressed: () async {
              var url = await controller.data.currentUrl();
              if (_favorites.contains(url)) {
                _favorites.remove(url);
                _toggleFavorite();
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('Removed $url from favorites.')),
                ); //Scaffold.snackba
              } else {
                _favorites.add(url);
                _toggleFavorite();
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('Saved $url for later reading.')),
                ); //Scaffold.snackBar
              } //else
            }, //onPressed
          ); //IconButton
        } //if controller.hasData
        return Container();
      }, //BuildContext
    ); //FutureBuilder WebViewController
  }//bookmarkButton
} //_SiteExplorerState

class Menu extends StatelessWidget {
  Menu(this._webViewControllerFuture, this.favoritesAccessor);
  final Future<WebViewController> _webViewControllerFuture;
  // TODO(efortuna): Come up with a more elegant solution for an accessor to this than a callback.
  final Function favoritesAccessor;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _webViewControllerFuture,
      builder: (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (!controller.hasData) return Container();
        return PopupMenuButton<String>(
          onSelected: (String value) async {
            if (value == 'Email link') {
              var url = await controller.data.currentUrl();
              await launch(
                  'mailto:?subject=Check out this lit Clothing Brand &body=$url');
            } else {
              var newUrl = await Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return FavoritesPage(favoritesAccessor());
                } //MaterialRoutet
              )); //Var newUrl
              Scaffold.of(context).removeCurrentSnackBar();
              if (newUrl != null) controller.data.loadUrl(newUrl);
            } //else
          }, //onSelected
          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            const PopupMenuItem<String>(
              value: 'Email link',
              child: Text('Email link'),
            ), //PopupmenuItem
            const PopupMenuItem<String>(
              value: 'See Favorites',
              child: Text('See Favorites'),
            ), //PopupmenuItem
          ], //itemBuilder
        ); //PopupMenuButton
      }, //BuildContext
    ); //FutureBuilder
  } //buildContext
} //Menu

class FavoritesPage extends StatelessWidget {
  FavoritesPage(this.favorites);
  final Set<String> favorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite pages')),
      body: ListView(
        children: favorites.map(
          (url) => ListTile(
            title: Text(url), onTap: () => Navigator.pop(context, url)
          ) //ListTile
        ).toList() //favorites.map
      ), //ListView
    ); //Scaffold
  } //BuildContext
} //FavoritesPage

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
        (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () => navigate(context, controller, goBack: true),
            ), //IconButton
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () => navigate(context, controller, goBack: false),
            ), //IconButton
          ], //ChildenWidget
        ); //Row
      }, //BuildContext context
    ); //FutureBuilder
  } //BuildContext

  navigate(BuildContext context, WebViewController controller,
    {bool goBack: false}) async {
    bool canNavigate =
        goBack ? await controller.canGoBack() : await controller.canGoForward();
    if (canNavigate) {
      goBack ? controller.goBack() : controller.goForward();
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("No ${goBack ? 'back' : 'forward'} history item")
        ), //SnackBar
      ); //Scaffold.snackBar
    } //else
  } //async
} //NavigationControls
