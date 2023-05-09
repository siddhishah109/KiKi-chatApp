import 'package:flutter/material.dart';
import 'package:kiki/theme/theme_model.dart';
import 'package:provider/provider.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: IconButton(onPressed: (){themeNotifier.isDark ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;}, icon: Icon(themeNotifier.isDark
                      ? Icons.nightlight_round
                      : Icons.wb_sunny)),
            )
          ],
        ),
      );
        
      },
      
    );
  }
}