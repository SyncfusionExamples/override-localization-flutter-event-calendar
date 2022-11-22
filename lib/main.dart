import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './localization_extendability.dart';

void main() {
  return runApp(const Extendibility());
}

class Extendibility extends StatelessWidget {
  const Extendibility({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        //Specify the delegate directly
        SfLocalizationsFrDelegate()
      ],
      supportedLocales: [
        Locale('en'),
        Locale('et'),
        Locale('fr'),
      ],
      locale: Locale('fr'),
      home: FlutterLocale(),
    );
  }
}

class FlutterLocale extends StatefulWidget {
  const FlutterLocale({super.key});

  @override
  _FlutterLocaleState createState() => _FlutterLocaleState();
}

class _FlutterLocaleState extends State<FlutterLocale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SfCalendar(
            view: CalendarView.month,
            allowedViews: const [
              CalendarView.schedule,
              CalendarView.day,
              CalendarView.week,
              CalendarView.timelineMonth
            ],
          ),
        ));
  }
}
