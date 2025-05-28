import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gorth/gen/assets.gen.dart';
import 'package:gorth/src/browser_utils_html.dart';
import 'package:gorth/zoom_image.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final Color color;
  final double screenWidth;

  const InfoSection({super.key, required this.title, required this.color, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    final String text = r'''  
Unleash the chaos. \$GORTH, birthed on Solana, channels the raw, untamed spirit of Gorth—Matt Furie’s cryptic creation from the forthcoming Cortex Vortex. This isn’t just a memecoin; it’s a primal force, a middle finger to the mundane, forged for degens who thrive in the wilds of risk and rebellion.  
  
Launched 10 months ago as the first Gorth contract on any blockchain, this organic CTO emerged from the gritty depths of Pump Fun, sculpted by a rogue alliance of visionaries. \$GORTH isn’t chasing trends—it’s carving its own legend, poised to echo the meteoric rise of Furie’s giants like \$PEPE, \$BRETT, \$ANDY, and \$LANDWOLF.  
  
Whispers in the shadows speak of a moonshot. A sub-100k gem with the potential for a 100–1000x surge. The community is a cult of chaos, united, relentless, and ready to ascend. Will you join the uprising or watch from the sidelines?
''';
    return Container(
      padding: const EdgeInsets.all(40),
      color: color,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            '\$GORTH by Matt Furie 6CrzZFNYccQ5DQL8UqKuwNowh3zsWD5RNTs1GZbApump',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Adigiana',
              fontSize: 33,
              color: Colors.white,
              shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Adigiana',
              fontSize: 30,
              color: Colors.redAccent.shade400,
              shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Adigiana',
                  fontSize: 30,
                  color: Colors.redAccent.shade400,
                  shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
                ),
                children: [
                  const TextSpan(text: '🌐 Dive in: '),
                  TextSpan(
                    text: 'https://www.gorthsol.xyz/\n',
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = () => openUrl('https://www.gorthsol.xyz/'),
                  ),
                  const TextSpan(text: '💬 Conspire: '),
                  TextSpan(
                    text: 'https://t.me/OG_Gorth_Solana\n',
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = () => openUrl('https://t.me/OG_Gorth_Solana'),
                  ),
                  const TextSpan(text: '🖤 Join the rebellion: '),
                  TextSpan(
                    text: 'https://x.com/i/communities/1923786151607091641\n\n',
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () => openUrl('https://x.com/i/communities/1923786151607091641'),
                  ),
                  TextSpan(text: '🚀 Ignite on '),
                  TextSpan(
                    text: 'Dexscreener.\n',
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),

                    recognizer:
                        TapGestureRecognizer()
                          ..onTap =
                              () => openUrl(
                                'https://dexscreener.com/solana/25ismnrftdomckrydjgicrrwet5wrb3pxburn89nr73l',
                              ),
                  ),
                  TextSpan(text: '🗳️ Cast your vote on '),
                  TextSpan(
                    text: ' Coinhunt ',
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () => openUrl('https://coinhunt.cc/coin/683385e0f3b2fcf77f489169'),
                  ),
                  TextSpan(text: ' & '),

                  TextSpan(
                    text: 'Lewk.',
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap =
                              () => openUrl(
                                'https://lewk.com/vote/6CrzZFNYccQ5DQL8UqKuwNowh3zsWD5RNTs1GZbApump?otp=tan9vv9u5xa5hn8n',
                              ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.dextools.image(height: 50),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adigiana',
                    fontSize: 30,
                    color: Colors.redAccent.shade400,
                    shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
                  ),
                  children: [
                    // TextSpan(
                    //   text: 'We on ',
                    // ),
                    TextSpan(
                      text: 'DEXTools',
                      style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap =
                                () => openUrl(
                                  'https://www.dextools.io/app/en/solana/pair-explorer/25isMnRfTDomCkRydjgiCrRwET5wRb3pxbuRn89Nr73L?t=1748421380523',
                                ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.moontook.image(height: 50),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Adigiana',
                    fontSize: 30,
                    color: Colors.redAccent.shade400,
                    shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
                  ),
                  children: [
                    // TextSpan(
                    //   text: 'We on ',
                    // ),
                    TextSpan(
                      text: ' Moontok\n',
                      style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap = () => openUrl('https://moontok.io/coins/gorth-1'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Text(
            '\$GORTH. Defy. Disrupt. Dominate.',
            style: TextStyle(fontSize: 40, fontFamily: 'Adigiana', color: Colors.redAccent.shade400),
          ),
          Text('🖕😈🖕', style: TextStyle(fontSize: 40, fontFamily: 'Adigiana', color: Colors.redAccent.shade400)),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomableImage(imageProvider: Assets.a39.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a2.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a29.provider()),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoCTO extends StatelessWidget {
  final String title;
  final Color color;
  final double screenWidth;

  const InfoCTO({super.key, required this.title, required this.color, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: color,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'CTO \$GORTH',
            style: TextStyle(
              fontFamily: 'Adigiana',
              fontSize: 33,
              color: Colors.white,
              shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
            ),
          ),
          Text(
            '\This project is an organic CTO forged in the trenches of pump fun by like-minded degens and is the '
            'first Gorth ca deployed on any blockchain, about 10 months ago.The #Gorth community are rallying '
            'together with ambitions to follow the footsteps of other Furie heavyweights like \$PEPE, \$BRETT, '
            '\$ANDY, and \$LANDWOLF.',
            style: TextStyle(
              fontFamily: 'Adigiana',
              fontSize: 30,
              color: Colors.redAccent.shade400,
              shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomableImage(imageProvider: Assets.a49.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a26.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a15.provider()),
            ],
          ),
        ],
      ),
    );
  }
}

class LFG extends StatelessWidget {
  final String title;
  final Color color;
  final double screenWidth;

  const LFG({super.key, required this.title, required this.color, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: color,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'MEMES \$GORTH',
            style: TextStyle(
              fontFamily: 'Adigiana',
              fontSize: 32,
              color: Colors.white,
              shadows: [Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomableImage(imageProvider: Assets.a24.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a7.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a6.provider()),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomableImage(imageProvider: Assets.a10.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a23.provider()),
              SizedBox(width: 8),
              ZoomableImage(imageProvider: Assets.a18.provider()),
            ],
          ),
        ],
      ),
    );
  }
}

class LFGDEX extends StatefulWidget {
  final String title;
  final Color color;
  final double screenWidth;

  const LFGDEX({super.key, required this.title, required this.color, required this.screenWidth});

  @override
  State<LFGDEX> createState() => _LFGDEXState();
}

class _LFGDEXState extends State<LFGDEX> {
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
        height: widget.screenWidth < 600 ? 400 + widget.screenWidth / 10 : 450 + widget.screenWidth / 10,
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
                    scale: widget.screenWidth < 600 ? 1.0 : 1.13, // увеличиваем немного
                    child: Transform.translate(
                      offset: Offset(_offset.dx * 0.02, _offset.dy * 0.02),
                      child: SizedBox.expand(
                        child: Image.asset(
                          Assets.f44.path,
                          fit: widget.screenWidth < 600 ? BoxFit.fitHeight : BoxFit.fill,
                          height:
                              widget.screenWidth < 600 ? 400 + widget.screenWidth / 10 : 450 + widget.screenWidth / 10,
                        ),
                      ),
                    ),
                  ),
                  Transform.scale(
                    scale: widget.screenWidth < 600 ? 1.0 : 1.15, // увеличиваем немного
                    child: Transform.translate(
                      offset: Offset(_offset.dx * 0.04, _offset.dy * 0.04),
                      child: SizedBox.expand(
                        child: Image.asset(
                          Assets.f6.path,
                          fit: widget.screenWidth < 600 ? BoxFit.fitHeight : BoxFit.cover,
                          height:
                              widget.screenWidth < 600 ? 400 + widget.screenWidth / 10 : 450 + widget.screenWidth / 10,
                        ),
                      ),
                    ),
                  ),

                  Transform.scale(
                    scale: widget.screenWidth < 600 ? 1.0 : 1.22, // увеличиваем немного
                    child: Transform.translate(
                      offset: Offset(_offset.dx * 0.06, _offset.dy * 0.06),
                      child: SizedBox.expand(
                        child: Image.asset(
                          Assets.f5.path,
                          fit: widget.screenWidth < 600 ? BoxFit.fitHeight : BoxFit.cover,
                          height:
                              widget.screenWidth < 600 ? 400 + widget.screenWidth / 10 : 450 + widget.screenWidth / 10,
                        ),
                      ),
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
                              'Let\'s f*cking',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 8 : widget.screenWidth / 12,
                                foreground:
                                    Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyanAccent,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.9), offset: Offset(4, 4), blurRadius: 40),
                                ],
                              ),
                            ),
                            Text(
                              'Let\'s f*cking',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 8 : widget.screenWidth / 12,
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
                  ],
                ),
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
                              'GORTH',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 7 : widget.screenWidth / 11,
                                foreground:
                                    Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyanAccent,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.9), offset: Offset(4, 4), blurRadius: 40),
                                ],
                              ),
                            ),
                            Text(
                              'GORTH',
                              style: TextStyle(
                                fontFamily: 'Genty',
                                fontSize: widget.screenWidth < 800 ? widget.screenWidth / 7 : widget.screenWidth / 11,
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
                  ],
                ),
                // остальной код с контейнером и текстом
              ],
            ),
          ],
        ),
      ),
    );
  }
}
