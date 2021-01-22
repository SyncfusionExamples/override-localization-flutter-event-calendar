import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './localization_extendability.dart';

void main() {
  return runApp(Extendibility());
}

class Extendibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        //Specify the delegate directly
        SfLocalizationsFrDelegate()
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('et'),
        const Locale('fr'),
      ],
      locale: const Locale('fr'),
      home: FlutterLocale(),
    );
  }
}

class FlutterLocale extends StatefulWidget {
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
            allowedViews: [
              CalendarView.schedule,
              CalendarView.day,
              CalendarView.week,
              CalendarView.timelineMonth
            ],
          ),
        ));
  }
}
