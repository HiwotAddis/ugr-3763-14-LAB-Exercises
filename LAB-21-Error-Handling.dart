import 'dart:io';

void readFileFromDisk(String filePath) {
  try {
    File file = File(filePath);
    if (!file.existsSync()) {
      throw FileSystemException("File not found", filePath);
    }

    String contents = file.readAsStringSync();
    print("File contents:\n$contents");
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: ${e.message}. File path: ${e.path}");
    } else {
      print("An unexpected error occurred: $e");
    }
  }
}

void main() {
  String validFilePath =
      "file:///C:/Users/wap/Desktop/2.1%2012+Rules+to+Learn+to+Code+eBook-Copyright%20App%20Brewery.pdf";
  readFileFromDisk(validFilePath);
}
