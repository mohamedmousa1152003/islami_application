
import 'package:finalislamic/core/provider.dart';
import 'package:finalislamic/moduls/setting/widget/language_bottom.dart';
import 'package:finalislamic/moduls/setting/widget/setting_item.dart';
import 'package:finalislamic/moduls/setting/widget/theme_bottom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class setting extends StatefulWidget{
  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
   var appProvider = Provider.of<AppProvider>(context);
   var locale =AppLocalizations.of(context)!;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 30),
        child: Column(
          
          
      
          children: [
            settingItems(settingTitle: locale.language,
            settingOption:appProvider.currentLocale == "en"? "English" : "عربي",
            onOptionTaped: (){
              showLangugeBottomSheet(context);
            },
            ),

            const SizedBox(height: 20),

            settingItems(settingTitle: locale.theme_mode ,
            settingOption: appProvider.isDark() ? locale.dark : locale.light,
            onOptionTaped: (){
              showThemeBottomSheet(context);

            },
            ),

            ],
      
      
        ),
      
    );
  }
}

void showLangugeBottomSheet(context){
showBottomSheet(context: context, builder: (context)=> language());
}

void showThemeBottomSheet(context){
showBottomSheet(context: context, builder: (context)=> themeBottom (

 
));
}