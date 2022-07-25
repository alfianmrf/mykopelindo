import 'package:flutter/material.dart';

import 'core/constants/constants.dart';
import 'presentation/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: AppColors.primarySwatch,
        fontFamily: AppStrings.fontFamily,
        textTheme: TextTheme(
          headline1: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          headline2: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          headline3: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          headline4: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          headline5: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          headline6: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          subtitle1: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          subtitle2: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          bodyText1: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          bodyText2: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          button: Theme.of(context)
              .textTheme
              .button!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          caption: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),
          overline: Theme.of(context)
              .textTheme
              .overline!
              .copyWith(letterSpacing: 0.5, fontFamily: AppStrings.fontFamily,),

        ),
      ),
      home: const LoginPage(),
    );
  }
}