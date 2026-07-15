import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? calculeazaHidratare(
  int? varsta,
  String? gen,
  double? greutate,
  String? activitate,
  String? sarcina,
  double? temperatura,
  String? unitateGreutate,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // 1. Valori de siguranță (Dacă utilizatorul lasă câmpuri necompletate)
  int v = varsta ?? 25;
  String g = gen ?? 'Female';
  double gr = greutate ?? 70.0;
  String act = activitate ?? 'Sedentary';
  String sarc = sarcina ?? 'Not pregnant';
  double temp = temperatura ?? 22.0;
  String unit = unitateGreutate ?? 'kg';

  // 2. Corecție unitate de greutate (kg vs lbs)
  // Dacă a ales lbs din dropdown-ul de lângă greutate, transformăm în kg
  if (unit.toLowerCase().contains('lbs')) {
    gr = gr / 2.2046;
  }

  // Calculul de bază: 35 ml de apă pentru fiecare kilogram de masă corporală
  double totalMl = gr * 35;

  // 3. Potrivire exactă după textele tale pentru nivelul de activitate (Activity Level)
  if (act.contains('Light activity')) {
    totalMl += 350; // +350ml pentru efort ușor (1-3 ori pe săptămână)
  } else if (act.contains('Moderate activity')) {
    totalMl += 700; // +700ml pentru efort moderat (3-5 ori pe săptămână)
  } else if (act.contains('Intense activity')) {
    totalMl += 1000; // +1000ml pentru efort intens (6-7 ori pe săptămână)
  }
  // Opțiunea Sedentary nu adaugă nimic în plus, rămâne la baza de 35ml/kg

  // 4. Ajustare pentru sarcină/lăptare ( Pregnancy status )
  // Se aplică doar dacă genul selectat este Female (Feminin)
  if (g.toLowerCase().contains('female')) {
    if (sarc.toLowerCase().contains('pregnant') &&
        !sarc.toLowerCase().contains('not')) {
      totalMl += 300; // Valoare adăugată în timpul sarcinii
    } else if (sarc.toLowerCase().contains('lactating')) {
      totalMl += 700; // Valoare adăugată în timpul alăptării
    }
  }

  // 5. Ajustare pentru temperatură ridicată ( de la Slider-ul tău )
  if (temp > 25.0) {
    // Adăugăm câte 100ml pentru fiecare grad ce depășește 25°C
    totalMl += (temp - 25.0) * 100;
  }

  // 6. Ajustare fină în funcție de vârstă
  if (v > 65) {
    totalMl -= 200;
  } else if (v < 18) {
    totalMl += 150; // Tinerii au un consum ușor ridicat raportat la masă
  }

  // Returnăm valoarea rotunjită la cel mai apropiat întreg (mL)
  return totalMl.round();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
