import 'package:flutter_test/flutter_test.dart';
import 'package:file_converter/data/services/app_settings_service.dart';
import 'package:file_converter/data/services/support_service.dart';
import 'package:file_converter/core/constants/target_size_config.dart';

void main() {
  group('Issue 3: Target size config & label', () {
    test('Default size is 40 KB matching < 40 KB label', () {
      expect(TargetSizeConfig.defaultSizeKb, equals(40));
      expect(TargetSizeConfig.getLabel(40), equals('40 KB'));
    });
  });

  group('Issue 4: Storage Usage Service', () {
    final service = AppSettingsService();

    test('formatBytes formats bytes into human readable units', () {
      expect(service.formatBytes(500), equals('500 B'));
      expect(service.formatBytes(1024), equals('1.0 KB'));
      expect(service.formatBytes(40 * 1024), equals('40.0 KB'));
      expect(service.formatBytes(1024 * 1024), equals('1.0 MB'));
      expect(service.formatBytes(5 * 1024 * 1024), equals('5.0 MB'));
      expect(service.formatBytes(1024 * 1024 * 1024), equals('1.0 GB'));
    });

    test('getStorageUsage handles empty/missing directories safely', () async {
      final usage = await service.getStorageUsage();
      expect(usage, isNonNegative);
    });
  });

  group('Issue 5: Rate App', () {
    test('SupportService uses correct Google Play app ID', () {
      expect(SupportService.appId, equals('com.fileconverter.file_converter'));
    });

    test('Google Play URLs are well formed', () {
      final marketUri = Uri.parse('market://details?id=${SupportService.appId}');
      final webUri = Uri.parse('https://play.google.com/store/apps/details?id=${SupportService.appId}');
      expect(marketUri.scheme, equals('market'));
      expect(marketUri.queryParameters['id'], equals('com.fileconverter.file_converter'));
      expect(webUri.scheme, equals('https'));
      expect(webUri.host, equals('play.google.com'));
      expect(webUri.queryParameters['id'], equals('com.fileconverter.file_converter'));
    });
  });
}
