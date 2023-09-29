/*debugShowCheckedModeBanner: false,
        
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      
      initialRoute: splash.routename,
      routes: {
       splash.routename :(context) => const splash(),
       home.routename :(context) => home(),

      } ,

      home: const splash() */
// ignore_for_file: camel_case_types



import 'package:finalislamic/core/provider.dart';
import 'package:finalislamic/core/theme.dart';
import 'package:finalislamic/moduls/hadeth/hadeth_details.dart';
import 'package:finalislamic/moduls/quran/sura_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen/home_layout.dart';
import 'moduls/splash/splash.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create:(context)=> AppProvider() ,
    child: const myapplication()));

}

class myapplication extends StatelessWidget{
  const myapplication({super.key});

  @override
  Widget build(BuildContext context) {

    var appProvider=Provider.of<AppProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

     localizationsDelegates: AppLocalizations.localizationsDelegates,
     supportedLocales: AppLocalizations.supportedLocales,


     locale:  Locale(appProvider.currentLocale),


      theme: themeData.lightTheme,
      darkTheme: themeData.darkTheme,
      themeMode:appProvider.currentTheme ,
      initialRoute: splash.routename,
      
      routes: {
        splash.routename:(context) => splash(),
        home.routename:(context) => home(),
        suraView.routeName:(context) => suraView(),
        hadethDetails.routeName:(context) => hadethDetails(),
      },
      home: splash(),
    );
  }

} 