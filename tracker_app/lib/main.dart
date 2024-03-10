import 'package:flutter/material.dart';
import 'package:tracker_app/widgets/expenses_list/expenses.dart';
import 'package:flutter/services.dart';

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 96, 59, 181));

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
            useMaterial3: true,
            colorScheme: kColorScheme,
            appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer,
            ),
            cardTheme: const CardTheme().copyWith(
                color: kColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                )),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 32,
                  ),
                )),
        //themeMode: ThemeMode.dark,
        home: const Expenses(),
      ),
    );
  });
}
