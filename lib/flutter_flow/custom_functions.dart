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

double sumaSubtotal(
  double valorSubtotal,
  double precio,
) {
  valorSubtotal = valorSubtotal + precio;
  return valorSubtotal;
}

double restaSubtotal(
  double valorSubtotal,
  double precio,
) {
  if (valorSubtotal > 0) {
    valorSubtotal = valorSubtotal - precio;
  }
  return valorSubtotal;
}

double calcularSubtotal(
  double precio,
  int cantidad,
) {
  return precio * cantidad;
}

double totalLista(
  List<double> subtotal,
  double total,
) {
  total = 0;
  for (double add in subtotal) {
    total += add;
  }
  return total;
}
