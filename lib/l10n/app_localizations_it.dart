// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get trackingTitle => 'Tracciamento';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get statusTitle => 'Registri';

  @override
  String get saveButton => 'Salva';

  @override
  String get cancelButton => 'Annulla';

  @override
  String get okButton => 'OK';

  @override
  String get locationButton => 'Invia posizione';

  @override
  String get statusButton => 'Mostra stato';

  @override
  String get settingsButton => 'Modifica impostazioni';

  @override
  String get invalidValue => 'Valore non valido';

  @override
  String get disabledValue => 'Disabilitato';

  @override
  String get idLabel => 'Identificatore dispositivo';

  @override
  String get urlLabel => 'URL del server';

  @override
  String get accuracyLabel => 'Precisione posizione';

  @override
  String get highestAccuracyLabel => 'Massima';

  @override
  String get highAccuracyLabel => 'Alta';

  @override
  String get mediumAccuracyLabel => 'Media';

  @override
  String get lowAccuracyLabel => 'Bassa';

  @override
  String get intervalLabel => 'Intervallo (secondi)';

  @override
  String get fastestIntervalLabel => 'Intervallo più rapido (secondi)';

  @override
  String get distanceLabel => 'Distanza (metri)';

  @override
  String get angleLabel => 'Angolo (gradi)';

  @override
  String get heartbeatLabel => 'Heartbeat stazionario (secondi)';

  @override
  String get bufferLabel => 'Memorizzazione offline';

  @override
  String get wakelockLabel => 'Wake lock';

  @override
  String get stopDetectionLabel => 'Rilevamento arresto';

  @override
  String get trackingLabel => 'Tracciamento continuo';

  @override
  String get advancedLabel => 'Impostazioni avanzate';

  @override
  String get passwordLabel => 'Password';

  @override
  String get optimizationMessage => 'Per garantire un tracciamento affidabile, disattiva l\'ottimizzazione batteria per questa app.';

  @override
  String get passwordError => 'Wrong password';

  @override
  String get startAction => 'Avvia servizio';

  @override
  String get stopAction => 'Ferma servizio';

  @override
  String get sosAction => 'Invia SOS';
}
