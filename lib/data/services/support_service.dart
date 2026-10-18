import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

/// Service for handling support, rating, and external links
class SupportService {

  /// Support contact details
  static const String supportEmail = 'ifixpdf.support@gmail.com';
  /// static const String supportPhone = '+919504356783'; // Normalized for tel: scheme

  /// Application ID on Google Play Store
  static const String appId = 'com.fileconverter.file_converter';

  /// Request app review or open store listing
  Future<void> rateApp() async {
    final nativePlayStoreUri = Uri.parse('market://details?id=$appId');
    final webPlayStoreUri = Uri.parse('https://play.google.com/store/apps/details?id=$appId');

    try {
      if (await canLaunchUrl(nativePlayStoreUri)) {
        await launchUrl(nativePlayStoreUri, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(webPlayStoreUri)) {
        await launchUrl(webPlayStoreUri, mode: LaunchMode.externalApplication);
      } else {
        debugPrint('Could not launch Play Store URL');
      }
    } catch (e) {
      debugPrint('Error launching native market URL, falling back to web: $e');
      try {
        await launchUrl(webPlayStoreUri, mode: LaunchMode.externalApplication);
      } catch (err) {
        debugPrint('Error launching web Play Store URL: $err');
      }
    }
  }

  /// Open email client for support
  Future<void> contactSupport() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: supportEmail,
      query: _encodeQueryParameters({
        'subject': 'Support Request - I FIX PDF App',
        'body': 'Describe your issue here...',
      }),
    );

    try {
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        debugPrint('Could not launch email client');
      }
    } catch (e) {
      debugPrint('Error launching email: $e');
    }
  }

  /// Call support number


  // Helper to encode query parameters properly
  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
