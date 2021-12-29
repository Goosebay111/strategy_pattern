void main() {
  var imageStorage = ImageStorage();
  imageStorage.store(
    'image.jpg',
    JpegCompressor(),
    BnWFilter(),
  );
  imageStorage.store(
    'image.jpg',
    JpegCompressor(),
    ColorFilter(),
  );
}

class ImageStorage {
  void store(String fileName, ImageCompressor compressor, ImageFilter filter) {
    compressor.compress(fileName);
    filter.filter(fileName);
  }
}

abstract class ImageCompressor {
  void compress(String fileName);
}

class JpegCompressor implements ImageCompressor {
  @override
  void compress(String fileName) {
    print('compressing using JPEG');
  }
}

class PngCompressor implements ImageCompressor {
  @override
  void compress(String fileName) {
    print('compressing using PNG');
  }
}

abstract class ImageFilter {
  void filter(String fileName);
}

class BnWFilter implements ImageFilter {
  @override
  void filter(String fileName) {
    print('filtering using B&W');
  }
}

class ColorFilter implements ImageFilter {
  @override
  void filter(String fileName) {
    print('filtering using Color');
  }
}
