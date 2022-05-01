/// Добавление картинок
/// 1. Добавить svg (png, jpeg) в папку assets/images
/// 2. Добавить геттер в AppAssets
abstract class AppAssets {
  static String _imagePath(
    String name, {
    String ext = 'svg',
  }) =>
      'assets/images/$name.$ext';

  static String get logo => _imagePath('logo');
}
