import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ms'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? msText = '',
  }) =>
      [enText, msText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Onboarding1
  {
    '7j5n9yqe': {
      'en': 'Explore jobs list',
      'ms': '',
    },
    '1nz8vl2a': {
      'en': 'Find openings tailored to your skills.',
      'ms': '',
    },
    'ovoppalh': {
      'en': 'Skip',
      'ms': '',
    },
    'j4bttu1u': {
      'en': 'Next',
      'ms': '',
    },
    'aoixbfzj': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Onboarding
  {
    'lo2z1tex': {
      'en': 'Explore for Job',
      'ms': '',
    },
    'qaj29i0m': {
      'en':
          'Figure out your top five priorities whether it is company culture, salary.',
      'ms': '',
    },
    'ylhjq3wc': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Onboarding2
  {
    '8ei167or': {
      'en': 'Track Applications',
      'ms': '',
    },
    '3e654rix': {
      'en': 'Manage your career effortlessly',
      'ms': '',
    },
    'a2wrsrw3': {
      'en': 'Skip',
      'ms': '',
    },
    'pig5e7da': {
      'en': 'Next',
      'ms': '',
    },
    'ss8d4g55': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Start
  {
    'yug63vjy': {
      'en': 'Explore your dream job',
      'ms': '',
    },
    'hj4qq78s': {
      'en': ' Submit applications in seconds.',
      'ms': '',
    },
    'hghlamc1': {
      'en': 'Create Account',
      'ms': '',
    },
    'b0ucjijp': {
      'en': 'Home',
      'ms': '',
    },
  },
  // CreateAccount
  {
    'eg6ftv7z': {
      'en': 'Registration',
      'ms': '',
    },
    '19meymnm': {
      'en': 'Let\'s get started by filling out the form below.',
      'ms': '',
    },
    '1t7r3iv8': {
      'en': 'Full Name',
      'ms': '',
    },
    '9860brrd': {
      'en': 'Email',
      'ms': '',
    },
    '0dfkfh1z': {
      'en': 'Password',
      'ms': '',
    },
    'qoippio6': {
      'en': 'Confirm Password',
      'ms': '',
    },
    '3s2qd0jw': {
      'en': 'Register',
      'ms': '',
    },
    '67f2ef23': {
      'en': '----------',
      'ms': '',
    },
    'nstlex5j': {
      'en': 'Or continue with',
      'ms': '',
    },
    'z3pk4f3a': {
      'en': '----------',
      'ms': '',
    },
    'wb1ll2ou': {
      'en': 'Have an account? ',
      'ms': '',
    },
    'bnhw9cqp': {
      'en': 'Sign in',
      'ms': '',
    },
    'o0ccbf6u': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Login
  {
    'fdqxm6dy': {
      'en': 'Welcome Back',
      'ms': '',
    },
    '8kvl1mcq': {
      'en': 'Let\'s login by filling out the form below.',
      'ms': '',
    },
    'gbvawu67': {
      'en': 'Email',
      'ms': '',
    },
    'yot2t00d': {
      'en': 'Password',
      'ms': '',
    },
    'smhdp4th': {
      'en': 'Login',
      'ms': '',
    },
    'qso5n1tp': {
      'en': 'Forgot Password',
      'ms': '',
    },
    '35fy83n3': {
      'en': 'Don\'t have an account? ',
      'ms': '',
    },
    'hvbze8h5': {
      'en': 'Register',
      'ms': '',
    },
    '5hi3mk9q': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Home1
  {
    'ak8zm99j': {
      'en': 'Good Morning,',
      'ms': '',
    },
    'gc4jam68': {
      'en': 'Summary of your weekly brews',
      'ms': '',
    },
    'axtxz9f1': {
      'en': 'Daily Coffees',
      'ms': '',
    },
    'igv9dyde': {
      'en': '1',
      'ms': '',
    },
    'j890jleb': {
      'en': 'Avg. Rating',
      'ms': '',
    },
    'tftk4p6p': {
      'en': '4.6',
      'ms': '',
    },
    'gdnx6soh': {
      'en': 'Daily Lessons',
      'ms': '',
    },
    '4x680070': {
      'en': 'How to pour Latte Art',
      'ms': '',
    },
    'nn3cjxsk': {
      'en': 'A wonderfully delicious 2 patty melt that melts into your...',
      'ms': '',
    },
    'tu0x3tdu': {
      'en': '2m',
      'ms': '',
    },
    'hmcgjc3y': {
      'en': 'How to brew coffee',
      'ms': '',
    },
    '6labbivl': {
      'en': 'Learn how to brew a delicious pourover every morning.',
      'ms': '',
    },
    'ufxw0sej': {
      'en': '2m',
      'ms': '',
    },
    's9l1em1y': {
      'en': 'Your latest coffee',
      'ms': '',
    },
    's5qvxzi0': {
      'en': 'Ethiopian Natural',
      'ms': '',
    },
    'czohd7tz': {
      'en': 'Meters',
      'ms': '',
    },
    'ini8egkl': {
      'en': 'Process',
      'ms': '',
    },
    '4butjq4w': {
      'en': 'Region',
      'ms': '',
    },
    '2i10egd2': {
      'en': '1,850',
      'ms': '',
    },
    '7vsij7ky': {
      'en': 'Washed',
      'ms': '',
    },
    '6gpo9p67': {
      'en': 'Guji',
      'ms': '',
    },
    '8emmsz0q': {
      'en': 'Home',
      'ms': '',
    },
    'n30b6nvw': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Home2
  {
    'imnwgk1f': {
      'en': 'Good Morning,',
      'ms': '',
    },
    'geijejj2': {
      'en': 'Summary of your weekly brews',
      'ms': '',
    },
    'm4rebagn': {
      'en': 'Daily Coffees',
      'ms': '',
    },
    '5koncwqo': {
      'en': '1',
      'ms': '',
    },
    'yjjaklvm': {
      'en': 'Avg. Rating',
      'ms': '',
    },
    '6vthbly3': {
      'en': '4.6',
      'ms': '',
    },
    'thj1ox6n': {
      'en': 'Daily Lessons',
      'ms': '',
    },
    '9cbhzkw9': {
      'en': 'How to pour Latte Art',
      'ms': '',
    },
    'h778rnly': {
      'en': 'A wonderfully delicious 2 patty melt that melts into your...',
      'ms': '',
    },
    'wsqj5ath': {
      'en': '2m',
      'ms': '',
    },
    'ru75yw6q': {
      'en': 'How to brew coffee',
      'ms': '',
    },
    'gbdkbbd8': {
      'en': 'Learn how to brew a delicious pourover every morning.',
      'ms': '',
    },
    'fqsd88qs': {
      'en': '2m',
      'ms': '',
    },
    'bqupk4et': {
      'en': 'Your latest coffee',
      'ms': '',
    },
    '8x3sfayd': {
      'en': 'Ethiopian Natural',
      'ms': '',
    },
    'r9r5h5lz': {
      'en': 'Meters',
      'ms': '',
    },
    'r24ij7tv': {
      'en': 'Process',
      'ms': '',
    },
    'qf0u7hqn': {
      'en': 'Region',
      'ms': '',
    },
    '3ez07rol': {
      'en': '1,850',
      'ms': '',
    },
    'aavit2vj': {
      'en': 'Washed',
      'ms': '',
    },
    'uj22y0ug': {
      'en': 'Guji',
      'ms': '',
    },
    'jr1bqwlb': {
      'en': 'Home',
      'ms': '',
    },
    'r4h70cxz': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Homepage
  {
    '1oq3jvmz': {
      'en': 'Home',
      'ms': '',
    },
  },
  // Miscellaneous
  {
    'bngx9uki': {
      'en': '',
      'ms': '',
    },
    '0vmvway3': {
      'en': '',
      'ms': '',
    },
    '65nxfvgq': {
      'en': '',
      'ms': '',
    },
    'ue4o5a8v': {
      'en': '',
      'ms': '',
    },
    '0lez6zwf': {
      'en': '',
      'ms': '',
    },
    'tlw0lvd6': {
      'en': '',
      'ms': '',
    },
    'lr8lkv0n': {
      'en': '',
      'ms': '',
    },
    'm0dangr3': {
      'en': '',
      'ms': '',
    },
    'hwk35mm6': {
      'en': '',
      'ms': '',
    },
    '022whl0d': {
      'en': '',
      'ms': '',
    },
    '25lses94': {
      'en': '',
      'ms': '',
    },
    'b1gy8xva': {
      'en': '',
      'ms': '',
    },
    '2lzql8vy': {
      'en': '',
      'ms': '',
    },
    '7qy0vsag': {
      'en': '',
      'ms': '',
    },
    '58kkbmwi': {
      'en': '',
      'ms': '',
    },
    'xnferz14': {
      'en': '',
      'ms': '',
    },
    'vmc19nzz': {
      'en': '',
      'ms': '',
    },
    'ttwv68oq': {
      'en': '',
      'ms': '',
    },
    'plgbazdx': {
      'en': '',
      'ms': '',
    },
    'id13pe3j': {
      'en': '',
      'ms': '',
    },
    't4dng7pn': {
      'en': '',
      'ms': '',
    },
    'i5f4ama4': {
      'en': '',
      'ms': '',
    },
    '16yzoht7': {
      'en': '',
      'ms': '',
    },
    'v9khcrch': {
      'en': '',
      'ms': '',
    },
    'fpjnauj9': {
      'en': '',
      'ms': '',
    },
  },
].reduce((a, b) => a..addAll(b));
