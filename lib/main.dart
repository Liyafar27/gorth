import 'package:flutter/material.dart';
import 'package:gorth/src/browser_utils_html.dart';

import 'gradient_bg.dart';
import 'gradient_divider.dart';
import 'info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: '\$GORTH',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final aboutKey = GlobalKey();
    final servicesKey = GlobalKey();
    final contactKey = GlobalKey();
    final buyKey = GlobalKey();
    void _scrollToSection(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(context, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        print('Контекст не найден 😢');
      }
    }

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            TextButton(
              onPressed: () => _scrollToSection(aboutKey),
              child: Text(
                '\$GORTH by Matt Furie',
                style: TextStyle(
                  fontFamily: 'Adigiana',
                  fontSize: screenWidth < 800 ? screenWidth / 25 : screenWidth / 40,
                  color: Colors.white,
                  shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
                ),
              ),
            ),
            TextButton(
              onPressed: () => openUrl("https://x.com/gorth_on_sol"),
              child: const Text('𝕏', style: TextStyle(fontFamily: 'Adigiana', fontSize: 25, color: Colors.white)),
            ),
            TextButton(
              onPressed: () => openUrl('https://t.me/OG_Gorth_Solana'),
              child: const Text('Tg', style: TextStyle(fontFamily: 'Adigiana', fontSize: 25, color: Colors.white)),
            ),
            TextButton(
              onPressed: () => openUrl('https://dexscreener.com/solana/25isMnRfTDomCkRydjgiCrRwET5wRb3pxbuRn89Nr73L'),
              child: const Text('Dex', style: TextStyle(fontFamily: 'Adigiana', fontSize: 25, color: Colors.white)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradientBackground(screenWidth: screenWidth),

            KeyedSubtree(
              key: aboutKey,
              child: InfoSection(title: 'О нас', color: Colors.black, screenWidth: screenWidth),
            ),
            GradientDivider(screenWidth: screenWidth),
            KeyedSubtree(
              key: servicesKey,
              child: InfoCTO(title: 'Услуги', color: Colors.grey[900]!, screenWidth: screenWidth),
            ),
            GradientDivider(screenWidth: screenWidth),

            KeyedSubtree(
              key: contactKey,
              child: LFG(title: 'Контакты', color: Colors.black87, screenWidth: screenWidth),
            ),

            KeyedSubtree(
              key: buyKey,
              child: LFGDEX(title: 'Контакты', color: Colors.black87, screenWidth: screenWidth),
            ),
          ],
        ),
      ),
    );
  }
}
