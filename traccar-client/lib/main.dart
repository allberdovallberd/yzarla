import 'dart:async';
import 'dart:developer' as developer;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:app_links/app_links.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:traccar_client/geolocation_service.dart';
import 'package:traccar_client/push_service.dart';
import 'package:traccar_client/quick_actions.dart';

import 'l10n/app_localizations.dart';
import 'main_screen.dart';
import 'preferences.dart';
import 'configuration_service.dart';

final messengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  await Preferences.init();
  await Preferences.migrate();
  await GeolocationService.init();
  await PushService.init();

  // Load saved locale
  String? savedLocaleCode = Preferences.getLocale();
  Locale? savedLocale;
  if (savedLocaleCode != null) {
    if (savedLocaleCode.contains('-')) {
      final parts = savedLocaleCode.split('-');
      savedLocale = Locale(parts[0], parts[1]);
    } else {
      savedLocale = Locale(savedLocaleCode);
    }
  }

  runApp(MainApp(initialLocale: savedLocale));
}

class MainApp extends StatefulWidget {
  final Locale? initialLocale;
  const MainApp({super.key, this.initialLocale});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  RateMyApp rateMyApp = RateMyApp(minDays: 0, minLaunches: 0);
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _locale = widget.initialLocale;
    _initLinks();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await rateMyApp.init();
      if (mounted && rateMyApp.shouldOpenDialog) {
        try {
          await rateMyApp.showRateDialog(context);
        } catch (error) {
          developer.log('Failed to show rate dialog', error: error);
        }
      }
    });
  }

  Future<void> _initLinks() async {
    final appLinks = AppLinks();
    final uri = await appLinks.getInitialLink();
    if (uri != null) {
      await ConfigurationService.applyUri(uri);
    }
    appLinks.uriLinkStream.listen((uri) async {
      await ConfigurationService.applyUri(uri);
    });
  }

  // Update locale dynamically
  void _setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
    String code =
        locale.countryCode != null && locale.countryCode!.isNotEmpty
            ? '${locale.languageCode}-${locale.countryCode}'
            : locale.languageCode;
    Preferences.setLocale(code);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: Stack(
        children: [
          const QuickActionsInitializer(),
          MainScreen(onLocaleChange: _setLocale), // <-- pass callback
        ],
      ),
    );
  }
}
