import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:vpn_basic_project/helpers/pref.dart';

class Config {
  static final _config = FirebaseRemoteConfig.instance;

  static const googleClientId = "";
  static const logInScopes = <String>[
    'email',
    'openid',
    'profile',
  ];

  static const accessToken =
      "V9dCO66ynnBdg/Lv86KL/BEqq8QAn+PL78vfCHBj7pOsOsebXAuT5yAhunlyutpg2i9kPx9iBiFNWL+LbThUNKRUvsFH4LeG8yAiNL1KooqOxfIGlCnu6B7ZWoxQC4CyI7nSu2vzuAJJ5SgJQnWMpA=";

  static const _defaultValues = {
    "interstitial_ad": "ca-app-pub-3940256099942544/1033173712",
    "native_ad": "ca-app-pub-3940256099942544/2247696110",
    "rewarded_ad": "ca-app-pub-3940256099942544/5224354917",
  };

  static Future<void> initConfig() async {
    await _config.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 30),
      ),
    );

    await _config.setDefaults(_defaultValues);
    await _config.fetchAndActivate();

    _config.onConfigUpdated.listen((event) async {
      await _config.activate();
    });
  }

  // static bool get _showAd => _config.getBool('show_ads');
  // static String get nativeAd => _config.getString('native_ad');
  // static String get interstitialAd => _config.getString('interstitial_ad');
  // static String get rewardedAd => _config.getString('rewarded_ad');
  static bool get _showAd => Pref.isPremium;
  static String get nativeAd => "ca-app-pub-3940256099942544/2247696110";
  static String get interstitialAd => "ca-app-pub-3940256099942544/1033173712";
  static String get rewardedAd => "ca-app-pub-3940256099942544/5224354917";

  static bool get hideAds => !_showAd;
}
