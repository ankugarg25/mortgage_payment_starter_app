import 'package:flutter/material.dart';
import 'package:mortgage_payment_starter_app/ui/mortgage_app.dart';
import 'package:mortgage_payment_starter_app/util/colors.dart';


void main() => runApp(new MaterialApp(
  home: MortgageApp(),
  theme: _appTheme
));



final ThemeData _appTheme = _mortgageAppTheme();
ThemeData _mortgageAppTheme(){
  final ThemeData base = ThemeData.light();

  return base.copyWith(

      accentColor: primaryDarkColor,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: secondaryBackgroundWhite,
      hintColor: primaryLightColor,
      cardColor: secondaryColor,

      textTheme: _buildMortgageTheme(base.textTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15) ,
        borderSide: BorderSide(color: primaryLightColor)
      )
    )


  );

}
TextTheme _buildMortgageTheme(TextTheme base){

  return base.copyWith(
//      headline: base.headline.copyWith(
//          fontSize: 23,
//          fontWeight: FontWeight.w900
//      ),

//      title: base.title.copyWith(
//          fontSize: 40,
//          fontWeight: FontWeight.w900,
//        color: textOnPrimary
//      ),

      body1: base.body1.copyWith(
          fontSize: 15,
          color:textOnSecondary
      ),
//      button: base.button.copyWith(
//        letterSpacing: 6,
//        fontSize: 23.9,
//        fontFamily: "Roboto",
//      )
  ).apply(
      fontFamily: "LEMONMILK",


     // displayColor: Colors.red,
     // bodyColor: Colors.blue
  );
}