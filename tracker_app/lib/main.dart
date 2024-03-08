import 'package:flutter/material.dart';
import 'package:tracker_app/widgets/expenses_list/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),

        //cardTheme: const CardTheme().copyWith(color:kColorScheme.secondaryContainer,
        //margin: const EdgeInsets.symmetric(horizontal: 32,vertical 9,))

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
      ),
      home: const Expenses(),
    ),
  );
}
