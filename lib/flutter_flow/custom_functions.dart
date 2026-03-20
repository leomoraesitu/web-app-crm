import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

Color? hexToColor(String? hex) {
  if (hex == null || hex.isEmpty) {
    return const Color(0xFF03142C);
  }

  final buffer = StringBuffer();
  String cleanHex = hex.replaceAll('#', '');

  if (cleanHex.length == 6) {
    buffer.write('FF');
    buffer.write(cleanHex);
  } else if (cleanHex.length == 8) {
    buffer.write(cleanHex);
  } else {
    return const Color(0xFF03142C);
  }

  return Color(int.parse(buffer.toString(), radix: 16));
}
