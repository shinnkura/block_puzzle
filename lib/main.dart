import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'domain/gamer.dart';
import 'domain/keyboard.dart';
import 'infrastructure/generated/l10n.dart';
import 'presentation/material/audios.dart';
import 'presentation/panel/page_portrait.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  _disableDebugPrint();
  runApp(MyApp());
}

void _disableDebugPrint() {
  bool debug = false;
  assert(() {
    debug = true;
    return true;
  }());
  if (!debug) {
    debugPrint = (message, {wrapWidth}) {};
  }
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tetris',
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      navigatorObservers: [routeObserver],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Sound(child: Game(child: KeyboardController(child: _HomePage()))),
      ),
    );
  }
}

const SCREEN_BORDER_WIDTH = 3.0;

const BACKGROUND_COLOR = const Color(0xffefcc19);

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool land = MediaQuery.of(context).orientation == Orientation.landscape;
    return land ? PageLand() : PagePortrait();
  }
}
