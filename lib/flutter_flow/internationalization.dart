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
      'en': 'Look & choose from Job Listings',
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
  // GetStarted
  {
    'yug63vjy': {
      'en': 'Explore your dream job',
      'ms': '',
    },
    'hj4qq78s': {
      'en': ' Submit applications in seconds.',
      'ms': '',
    },
    'lvv4zc80': {
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
  // Home
  {
    'fywz1upg': {
      'en': 'Welcome back!',
      'ms': '',
    },
    'tld61fua': {
      'en': 'Search & Explore jobs!',
      'ms': '',
    },
    'kfh8b3xr': {
      'en': 'Featured Jobs',
      'ms': '',
    },
    'lsqy7o4j': {
      'en': 'See all',
      'ms': '',
    },
    '7psyezm6': {
      'en': 'Design',
      'ms': '',
    },
    '0pwalgyt': {
      'en': 'Fulltime',
      'ms': '',
    },
    'a1fycmcq': {
      'en': 'Junior',
      'ms': '',
    },
    'telp7jxi': {
      'en': 'Recomended Jobs',
      'ms': '',
    },
    'wvoktgsq': {
      'en': 'See all',
      'ms': '',
    },
    'sxcxwscz': {
      'en': 'RM 15,000/M',
      'ms': '',
    },
    '0snel6tp': {
      'en': '.',
      'ms': '',
    },
  },
  // HomeNSI
  {
    'kkkoiphe': {
      'en': 'Welcome back!',
      'ms': '',
    },
    '55irkqey': {
      'en': 'Search & Explore jobs!',
      'ms': '',
    },
    't69d80vb': {
      'en': 'Featured Jobs',
      'ms': '',
    },
    'mwjd9xrj': {
      'en': 'See all',
      'ms': '',
    },
    'a7hwdrgl': {
      'en': 'Design',
      'ms': '',
    },
    'bt3q8etc': {
      'en': 'Fulltime',
      'ms': '',
    },
    'g1lexywj': {
      'en': 'Junior',
      'ms': '',
    },
    'rs447f0f': {
      'en': 'Recomended Jobs',
      'ms': '',
    },
    'kzlu9wgi': {
      'en': 'See all',
      'ms': '',
    },
    '1z5ag5nx': {
      'en': 'RM 15,000/M',
      'ms': '',
    },
    'serqwnzx': {
      'en': '.',
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
