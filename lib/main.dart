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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: '\$GORTH', home: const HomePage());
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.black,

          title: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // 👈 выравнивание вправо
              children: [
                Wrap(
                  spacing: screenWidth < 800 ? 5 : 15, // ← расстояние между кнопками
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),

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
                    SizedBox(
                      width: screenWidth < 800 ? screenWidth / 33 + 16 : screenWidth / 38 + 16,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.redAccent.shade400,
                        ),

                        onPressed: () => openUrl("https://x.com/gorth_on_sol"),

                        child: Text(
                          '𝕏',
                          style: TextStyle(
                            fontFamily: 'Adigiana',
                            shadows: [Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],
                            fontSize: screenWidth < 800 ? screenWidth / 35 : screenWidth / 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth < 800 ? screenWidth / 33 + 16 : screenWidth / 38 + 16,
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero, backgroundColor: Colors.cyanAccent),

                        onPressed: () => openUrl('https://t.me/OG_Gorth_Solana'),
                        child: Text(
                          'Tg',
                          style: TextStyle(
                            fontFamily: 'Adigiana',
                            shadows: [Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],
                            fontSize: screenWidth < 800 ? screenWidth / 35 : screenWidth / 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed:
                          () => openUrl('https://dexscreener.com/solana/25isMnRfTDomCkRydjgiCrRwET5wRb3pxbuRn89Nr73L'),
                      child: Text(
                        'DEX',
                        style: TextStyle(
                          fontFamily: 'Adigiana',
                          fontSize: screenWidth < 800 ? screenWidth / 35 : screenWidth / 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed:
                          () => openUrl(
                            'https://www.dextools.io/app/en/solana/pair-explorer/25isMnRfTDomCkRydjgiCrRwET5wRb3pxbuRn89Nr73L?t=1748421380523',
                          ),
                      child: Text(
                        'DEXTools',
                        style: TextStyle(
                          fontFamily: 'Adigiana',
                          fontSize: screenWidth < 800 ? screenWidth / 35 : screenWidth / 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () => openUrl('https://moontok.io/coins/gorth-1'),
                      child: Text(
                        'MoonTok',
                        style: TextStyle(
                          fontFamily: 'Adigiana',
                          fontSize: screenWidth < 800 ? screenWidth / 35 : screenWidth / 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
