/// Theme mode for paywall views.
///
/// This allows overriding the system theme for paywall presentation.
/// Similar to how [Purchases.overridePreferredUILocale] overrides locale.
enum PaywallThemeMode {
  /// Use the system theme (light or dark based on device settings).
  /// This is the default behavior.
  system,

  /// Force light theme for the paywall.
  light,

  /// Force dark theme for the paywall.
  dark,
}

/// Extension to convert PaywallThemeMode to native platform values.
extension PaywallThemeModeExtension on PaywallThemeMode {
  /// Returns the integer value to pass to native platforms.
  /// 0 = system, 1 = light, 2 = dark
  int get nativeValue {
    switch (this) {
      case PaywallThemeMode.system:
        return 0;
      case PaywallThemeMode.light:
        return 1;
      case PaywallThemeMode.dark:
        return 2;
    }
  }
}
