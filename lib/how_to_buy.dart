import 'package:flutter/material.dart';

class HowToBuySection extends StatefulWidget {
  final double screenWidth;

  const HowToBuySection({super.key, required this.screenWidth});

  @override
  State<HowToBuySection> createState() => _HowToBuySectionState();
}

class _HowToBuySectionState extends State<HowToBuySection> {
  final Color accent = const Color(0xFF00FFB2);
  final List<bool> expanded = List.generate(5, (_) => false);

  void toggle(int index) {
    setState(() {
      expanded[index] = !expanded[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final steps = [
      {
        'title': '📲 Step 1: Install Phantom Wallet',
        'desc': 'Download Phantom from https://phantom.app and create a wallet. Save your recovery phrase securely.',
      },
      {
        'title': '💰 Step 2: Fund Your Wallet with SOL',
        'desc': 'Buy SOL on an exchange (like Coinbase or Binance), then transfer it to your Phantom address.',
      },
      {
        'title': '🔄 Step 3: Go to Jupiter or Raydium',
        'desc': 'Use [Jupiter](https://jup.ag) or [Raydium](https://raydium.io/swap/) to swap SOL for \$GORTH.',
      },
      {
        'title': '📋 Step 4: Paste the Token Address',
        'desc': 'Token: `6CrzZFNYccQ5DQL8UqKuwNowh3zsWD5RNTs1GZbApump` (copy it into the swap field).',
      },
      {
        'title': '🚀 Step 5: Swap & Join the Community',
        'desc':
            'Complete the swap, then join [Telegram](https://t.me/OG_Gorth_Solana) and [X](https://x.com/i/communities/1923786151607091641).',
      },
    ];

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "HOW TO BUY \$GORTH",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: accent,
              shadows: [Shadow(color: accent, blurRadius: 12)],
            ),
          ),
          const SizedBox(height: 20),
          ...List.generate(steps.length, (i) {
            final step = steps[i];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => toggle(i),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: accent.withOpacity(0.4)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            step['title']!,
                            style: TextStyle(color: accent, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(expanded[i] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down, color: accent),
                      ],
                    ),
                  ),
                ),
                if (expanded[i])
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(color: Colors.grey[850], borderRadius: BorderRadius.circular(8)),
                    child: SelectableText(step['desc']!, style: const TextStyle(color: Colors.white70)),
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
