class FontManager {
  static const String _primaryFontFamily = 'Roboto';
  static const String _secondaryFontFamily = 'Roboto';
  static const String _tertiaryFontFamily = 'Roboto';

  static const int _fontSizeV1 = 30;
  static const int _fontSizeV2 = 25;
  static const int _fontSizeV3 = 20;
  static const int _fontSizeV4 = 15;
  static const int _fontSizeV5 = 10;
  static const int _fontSizeV6 = 5;

  int _currentHeadingSize = _fontSizeV2;
  int _currentSubHeadingSize = _fontSizeV1;

  static FontManager? _instance;

  FontManager._() {}

  static FontManager getInstance() {
    if (_instance == null) {
      _instance = FontManager._();
    }
    return _instance!;
  }

  String getPrimaryFontFamily() {
    return _primaryFontFamily;
  }

  String getSecondaryFontFamily() {
    return _secondaryFontFamily;
  }

  String getTertiaryFontFamily() {
    return _tertiaryFontFamily;
  }

  void setCurrentHeadingSize(int size) {
    switch (size) {
      case 1:
        _currentHeadingSize = _fontSizeV1;
        break;
      case 2:
        _currentHeadingSize = _fontSizeV2;
        break;
      case 3:
        _currentHeadingSize = _fontSizeV3;
        break;
      case 4:
        _currentHeadingSize = _fontSizeV4;
        break;
      case 5:
        _currentHeadingSize = _fontSizeV5;
        break;
      case 6:
        _currentHeadingSize = _fontSizeV6;
        break;

      default:
        _currentHeadingSize = _fontSizeV2;
        break;
    }
  }

  void setCurrentSubHeadingSize(int size) {
    switch (size) {
      case 1:
        _currentSubHeadingSize = _fontSizeV1;
        break;
      case 2:
        _currentSubHeadingSize = _fontSizeV2;
        break;
      case 3:
        _currentSubHeadingSize = _fontSizeV3;
        break;
      case 4:
        _currentSubHeadingSize = _fontSizeV4;
        break;
      case 5:
        _currentSubHeadingSize = _fontSizeV5;
        break;
      case 6:
        _currentSubHeadingSize = _fontSizeV6;
        break;

      default:
        _currentSubHeadingSize = _fontSizeV2;
        break;
    }
  }

  int getCurrentHeadingSize() {
    return _currentHeadingSize;
  }

  int getCurrentSubHeadingSize() {
    return _currentSubHeadingSize;
  }
}
