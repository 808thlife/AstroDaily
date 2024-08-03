import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282277776),
      surfaceTint: Color(4282277776),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292207615),
      onPrimaryContainer: Color(4278197052),
      secondary: Color(4287646522),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957778),
      onSecondaryContainer: Color(4281993730),
      tertiary: Color(4285421174),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294498558),
      onTertiaryContainer: Color(4280816431),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294572543),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282599246),
      outline: Color(4285822847),
      outlineVariant: Color(4291086031),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4289186047),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278197052),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4280567671),
      secondaryFixed: Color(4294957778),
      onSecondaryFixed: Color(4281993730),
      secondaryFixedDim: Color(4294948002),
      onSecondaryFixedVariant: Color(4285674533),
      tertiaryFixed: Color(4294498558),
      onTertiaryFixed: Color(4280816431),
      tertiaryFixedDim: Color(4292590817),
      onTertiaryFixedVariant: Color(4283842141),
      surfaceDim: Color(4292467168),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280304498),
      surfaceTint: Color(4282277776),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283790760),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285411618),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289356111),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283513689),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286999693),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282336074),
      outline: Color(4284243815),
      outlineVariant: Color(4286020483),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4289186047),
      primaryFixed: Color(4283790760),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282146189),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289356111),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287449400),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286999693),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285289331),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467168),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198856),
      surfaceTint: Color(4282277776),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280304498),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282585349),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285411618),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281276982),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283513689),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280296491),
      outline: Color(4282336074),
      outlineVariant: Color(4282336074),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4293192959),
      primaryFixed: Color(4280304498),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201690),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285411618),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283505422),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283513689),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282000705),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467168),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289186047),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278464607),
      primaryContainer: Color(4280567671),
      onPrimaryContainer: Color(4292207615),
      secondary: Color(4294948002),
      onSecondary: Color(4283834129),
      secondaryContainer: Color(4285674533),
      onSecondaryContainer: Color(4294957778),
      tertiary: Color(4292590817),
      onTertiary: Color(4282263621),
      tertiaryContainer: Color(4283842141),
      onTertiaryContainer: Color(4294498558),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309080),
      onSurface: Color(4292993769),
      onSurfaceVariant: Color(4291086031),
      outline: Color(4287533465),
      outlineVariant: Color(4282599246),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4282277776),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278197052),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4280567671),
      secondaryFixed: Color(4294957778),
      onSecondaryFixed: Color(4281993730),
      secondaryFixedDim: Color(4294948002),
      onSecondaryFixedVariant: Color(4285674533),
      tertiaryFixed: Color(4294498558),
      onTertiaryFixed: Color(4280816431),
      tertiaryFixedDim: Color(4292590817),
      onTertiaryFixedVariant: Color(4283842141),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289711359),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278195762),
      primaryContainer: Color(4285698758),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949546),
      onSecondary: Color(4281533696),
      secondaryContainer: Color(4291525736),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292854246),
      onTertiary: Color(4280421929),
      tertiaryContainer: Color(4288907178),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294703871),
      onSurfaceVariant: Color(4291349204),
      outline: Color(4288717740),
      outlineVariant: Color(4286612363),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4280699000),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278194473),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4279121509),
      secondaryFixed: Color(4294957778),
      onSecondaryFixed: Color(4280943360),
      secondaryFixedDim: Color(4294948002),
      onSecondaryFixedVariant: Color(4284294167),
      tertiaryFixed: Color(4294498558),
      onTertiaryFixed: Color(4280027428),
      tertiaryFixedDim: Color(4292590817),
      onTertiaryFixedVariant: Color(4282658379),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289711359),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949546),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292854246),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294703871),
      outline: Color(4291349204),
      outlineVariant: Color(4291349204),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4278200917),
      primaryFixed: Color(4292667391),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289711359),
      onPrimaryFixedVariant: Color(4278195762),
      secondaryFixed: Color(4294959321),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949546),
      onSecondaryFixedVariant: Color(4281533696),
      tertiaryFixed: Color(4294631167),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292854246),
      onTertiaryFixedVariant: Color(4280421929),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
