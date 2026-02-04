// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get trackingTitle => 'Stebėjimas';

  @override
  String get settingsTitle => 'Nustatymai';

  @override
  String get statusTitle => 'Žurnalai';

  @override
  String get saveButton => 'Išsaugoti';

  @override
  String get cancelButton => 'Atšaukti';

  @override
  String get okButton => 'OK';

  @override
  String get locationButton => 'Siųsti poziciją';

  @override
  String get statusButton => 'Rodyti būklę';

  @override
  String get settingsButton => 'Keisti nustatymus';

  @override
  String get invalidValue => 'Neteisinga reikšmė';

  @override
  String get disabledValue => 'Disabled';

  @override
  String get idLabel => 'Įrenginio identifikatorius';

  @override
  String get urlLabel => 'Serverio URL';

  @override
  String get accuracyLabel => 'Pozicijos tikslumas';

  @override
  String get highestAccuracyLabel => 'Highest';

  @override
  String get highAccuracyLabel => 'Aukštas';

  @override
  String get mediumAccuracyLabel => 'Vidutinis';

  @override
  String get lowAccuracyLabel => 'Žemas';

  @override
  String get intervalLabel => 'Intervalas (sekundėmis)';

  @override
  String get fastestIntervalLabel => 'Fastest interval (seconds)';

  @override
  String get distanceLabel => 'Atstumas (metrais)';

  @override
  String get angleLabel => 'Angle (degrees)';

  @override
  String get heartbeatLabel => 'Stationary heartbeat (seconds)';

  @override
  String get bufferLabel => 'Kaupti duomenis neprisijungus';

  @override
  String get wakelockLabel => 'Wake lock';

  @override
  String get stopDetectionLabel => 'Stop detection';

  @override
  String get trackingLabel => 'Nuolatinis stebėjimas';

  @override
  String get advancedLabel => 'Advanced settings';

  @override
  String get passwordLabel => 'Password';

  @override
  String get optimizationMessage => 'To ensure reliable tracking, please disable battery optimization for this app.';

  @override
  String get passwordError => 'Wrong password';

  @override
  String get startAction => 'Įjungti servisą';

  @override
  String get stopAction => 'Sustabdyti servisą';

  @override
  String get sosAction => 'Siųsti SOS';
}
