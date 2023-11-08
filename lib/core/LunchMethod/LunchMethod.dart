import 'package:bookly_app/core/SnackBar/SnackBar.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

// ignore: non_constant_identifier_names
Future<void> lunchLinkURL(BuildContext context, dynamic URL) async {
  final Uri url = Uri.parse(URL);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    // ignore: use_build_context_synchronously
    snackBar(context, url);
  }
}
