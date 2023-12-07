import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/features/bitcoin/bitcoin_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BitcoinPage extends StatelessWidget {
  const BitcoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BitcoinProvider>(
        create: (context) => BitcoinProvider()..getLatestBitcoinPrice(),
        builder: (context, _) {
          return LoadingOverlay(
            isLoading: context.watch<BitcoinProvider>().isLoading,
            child: LayoutBuilder(builder: (ctx, constraints) {
              return Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Spacer(),
                    Image.asset(
                      "assets/images/Crypto.png",
                      width: constraints.maxWidth * 0.6,
                      height: constraints.maxWidth * 0.6,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8),
                    Text(
                        "Bitcoin Price: \$${context.watch<BitcoinProvider>().bitcoinUSDPrice}",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall!),
                    const Spacer(),
                  ],
                ),
              ));
            }),
          );
        });
  }
}
