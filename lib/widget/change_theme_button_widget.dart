import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iassist/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);

      return Switch.adaptive(
        activeThumbImage: AssetImage('assets/images/darkmodeicon.png'),
        activeColor: Colors.white,
        // activeColor: Color(0xFFBA494B),
        inactiveThumbColor: Color(0xFFffb79d),
        inactiveTrackColor: Color(0xFFffb79d).withOpacity(0.5),
        activeTrackColor: Color(0xFFffb79d).withOpacity(0.4),
        value: themeProvider.isDarkMode, 
        onChanged: (bool value) {  
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
          
        },
      );
  }
}