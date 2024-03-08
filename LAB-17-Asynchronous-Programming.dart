import 'dart:async';

class DatabaseService {
  Future<List<String>> fetchData() async {
    await Future.delayed(Duration(seconds: 2));

    List<String> data = [
      'Item 1',
      'Item 2',
      'Item 3',
    ];
    return data;
  }
}

void main() async {
  DatabaseService databaseService = DatabaseService();

  print('Loading data...');
  List<String> loadedData = await databaseService.fetchData();

  loadedData.forEach((item) => print(item));
  print('Data loaded successfully:');
}
