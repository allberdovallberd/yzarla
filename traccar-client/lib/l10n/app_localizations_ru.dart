// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get trackingTitle => 'Отслеживание';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get statusTitle => 'Логи';

  @override
  String get saveButton => 'Сохранить';

  @override
  String get cancelButton => 'Отмена';

  @override
  String get okButton => 'ОК';

  @override
  String get locationButton => 'Отправить местоположение';

  @override
  String get statusButton => 'Показать статус';

  @override
  String get settingsButton => 'Изменить настройки';

  @override
  String get invalidValue => 'Недопустимое значение';

  @override
  String get disabledValue => 'Отключено';

  @override
  String get idLabel => 'Идентификатор устройства';

  @override
  String get urlLabel => 'URL сервера';

  @override
  String get accuracyLabel => 'Точность определения местоположения';

  @override
  String get highestAccuracyLabel => 'Наивысшая';

  @override
  String get highAccuracyLabel => 'Высокая';

  @override
  String get mediumAccuracyLabel => 'Средняя';

  @override
  String get lowAccuracyLabel => 'Низкая';

  @override
  String get intervalLabel => 'Интервал (секунды)';

  @override
  String get fastestIntervalLabel => 'Минимальный интервал (секунды)';

  @override
  String get distanceLabel => 'Дистанция (метры)';

  @override
  String get angleLabel => 'Угол (градусы)';

  @override
  String get heartbeatLabel => 'Интервал неподвижности (секунды)';

  @override
  String get bufferLabel => 'Буферизация офлайн';

  @override
  String get wakelockLabel => 'Блокировка сна';

  @override
  String get stopDetectionLabel => 'Обнаружение остановки';

  @override
  String get trackingLabel => 'Непрерывное отслеживание';

  @override
  String get advancedLabel => 'Расширенные настройки';

  @override
  String get passwordLabel => 'Password';

  @override
  String get optimizationMessage => 'Чтобы обеспечить надёжное отслеживание, отключите оптимизацию батареи для этого приложения.';

  @override
  String get passwordError => 'Wrong password';

  @override
  String get startAction => 'Запустить сервис';

  @override
  String get stopAction => 'Остановить сервис';

  @override
  String get sosAction => 'Отправить SOS';
}
