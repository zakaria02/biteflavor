import 'dart:io';

import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:biteflavor/utils/providers/router.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:biteflavor/utils/widgets/bottom_bar_nav.dart';
import 'package:biteflavor/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  BannerAd? _bannerAd;
  bool _bannerAdLoaded = false;

  final adUnitId =
      Platform.isIOS ? AppTexts.iosBannerAd : AppTexts.androidBannerAd;

  void loadAd() async {
    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize.fullBanner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void initState() {
    loadAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isParent = ref
            .watch(routerProvider)
            .routerDelegate
            .currentConfiguration
            .routes
            .length ==
        2;

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            if (isParent) const CustomAppBar(),
            if (_bannerAdLoaded && _bannerAd != null)
              SizedBox(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
            Expanded(child: widget.navigationShell),
          ],
        ),
      ),
      bottomNavigationBar: isParent
          ? BottomNavBar(
              navigationShell: widget.navigationShell,
              onTap: (index) {
                switch (index) {
                  case 0:
                    const HomeRoute().go(context);
                    break;
                  case 1:
                    const SearchRoute().go(context);
                    break;
                  case 2:
                    const FavoriteRoute().go(context);
                    break;
                  case 3:
                    const SettingsRoute().go(context);
                    break;
                  default:
                    widget.navigationShell.goBranch(
                      index,
                      initialLocation:
                          index == widget.navigationShell.currentIndex,
                    );
                }
              })
          : null,
    );
  }
}
