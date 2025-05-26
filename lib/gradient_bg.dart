import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'gen/assets.gen.dart';

class GradientBackground extends StatefulWidget {
  final double screenWidth;

  const GradientBackground({super.key, required this.screenWidth});

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final center = screenSize.center(Offset.zero);
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _offset = event.position - center;
        });
      },
      child: Container(
        height: widget.screenWidth < 600 ? 400+widget.screenWidth/10:450+widget.screenWidth/10,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight, // низ
            colors: [
              Colors.red.withValues(alpha: 0.2),
              Colors.black12,
              Colors.black45,
              Colors.black87,
              Colors.black45,
              Colors.black12,
              Color(0xFF6495ED).withValues(alpha: 0.2), // голубовато-синий
            ],
          ),
        ),
        child: Stack(
          children: [
            MouseRegion(
              onHover: (event) {
                setState(() {
                  _offset = event.position - center;
                });
              },
              child: Stack(
                children: [
                  Transform.scale(
                    scale: 1.15, // увеличиваем немного
                    child: Transform.translate(
                      offset: Offset(_offset.dx * 0.06, _offset.dy * 0.06),
                      child: SizedBox.expand(child: Image.asset(Assets.f6.path, fit: BoxFit.cover,        height: widget.screenWidth < 600 ? 400+widget.screenWidth/10:450+widget.screenWidth/10,
                      )),
                    ),
                  ),
                  Transform.scale(
                    scale: 1.13, // увеличиваем немного
                    child: Transform.translate(
                      offset: Offset(_offset.dx * 0.03, _offset.dy * 0.03),
                      child: SizedBox.expand(child: Image.asset(Assets.f4.path, fit: BoxFit.cover,        height: widget.screenWidth < 600 ? 400+widget.screenWidth/10:450+widget.screenWidth/10,
                      )),
                    ),
                  ),
                  Transform.scale(
                    scale: 1.22, // увеличиваем немного
                    child: Transform.translate(
                      offset: Offset(_offset.dx * 0.02, _offset.dy * 0.02),
                      child: SizedBox.expand(child: Image.asset(Assets.f5.path, fit: BoxFit.cover,        height: widget
                          .screenWidth < 600 ? 400+widget.screenWidth/10:450+widget.screenWidth/10,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            Text(
                              'Gorth',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 5 : widget.screenWidth /
                                    9,
                                foreground:
                                    Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyanAccent,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.9), offset: Offset(4, 4), blurRadius: 40),
                                ],),
                            ),
                            Text(
                              'Gorth',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 5 : widget.screenWidth /
                                   9,
                                color: Colors.redAccent.shade400,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.9), offset: Offset(4, 4), blurRadius: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Text(
                              'on SOL',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 7 : widget.screenWidth /
                                   11,                                  foreground:
                                    Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyanAccent,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.9), offset: Offset(4, 4), blurRadius: 40),
                                ],),
                            ),
                            Text(
                              'on SOL',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 7 : widget.screenWidth /
                                    11,
                                color: Colors.redAccent.shade400,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.9), offset: Offset(4, 4), blurRadius: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: widget.screenWidth/20,), // немного отступа между текстом и картинкой
                    Container(
                      height: widget.screenWidth/3.5,
                      width: widget.screenWidth/3.5,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black, // цвет тени и прозрачность
                            blurRadius: 20, // размытие тени
                            offset: Offset(8, -5), // смещение тени: вправо 0, вниз 5
                          ),
                        ],
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white, width: 4),
                        image: DecorationImage(image: Assets.a13.provider(), fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
                // остальной код с контейнером и текстом
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SelectableText(
                        "6CrzZFNYccQ5DQL8UqKuwNowh3zsWD5RNTs1GZbApump",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: widget.screenWidth < 800 ? widget.screenWidth / 40 : widget.screenWidth / 60,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy, color: Colors.white70),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: '6CrzZFNYccQ5DQL8UqKuwNowh3zsWD5RNTs1GZbApump'));
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Copied!")));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
