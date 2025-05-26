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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
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
              onPressed: () => openUrl('6CrzZFNYccQ5DQL8UqKuwNowh3zsWD5RNTs1GZbApump'),
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

Widget _buildSocialButton(String label, String url, Color color, String icon) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {
        // openUrl(url);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Color(0xFF6495ED).withValues(alpha: 0.2)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF6495ED).withValues(alpha: 0.9),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 8),
            ),
          ],
          border: Border.all(color: Colors.white.withValues(alpha: 0.3), width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              icon,
              // style: GoogleFonts.fredoka(
              style: TextStyle(color: Colors.white70),
              //     fontSize: 26,
              //     fontWeight: FontWeight.w900,
              //     color: Colors.white,
              //     letterSpacing: 1,
              //   ),
            ),
            // ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(color: Colors.white70),
              //   textStyle: TextStyle(
              //     fontSize: 26,
              //     fontWeight: FontWeight.w900,
              //     color: Colors.white,
              //     letterSpacing: 1,
              //   ),
            ),
            // ),
          ],
        ),
      ),
    ),
  );
}
