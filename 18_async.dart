
void main() async {
  DataService dataService = DataService();
   String data = await dataService.getData();
   print(data);
}

class DataService {

  Future<String> _getDataFromCloud() async {
    // GET DATA FROM CLOUD --> TAKES TIME
    await Future.delayed(Duration(seconds: 4));
    print('Get data finished');
    // RETURNS DATA
    return 'fake data';
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    // PARSE DATA FROM CLOUD --> TAKES TIME
    await Future.delayed(Duration(seconds: 2));
    print('parse data finished');
    // RETURNS DATA
    return 'fake parsed data';
  }

  Future<String> getData() async {

    // GET DATA ----> TAKES TIME
    // PARSE DATA --> TAKES TIME
    // RETURNS DATA
    
    final String dataFromCloud = await _getDataFromCloud();
    final String parsedData = await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    /*
    //!PARALLEL
    _getDataFromCloud();
    final String parsedData = await _parseDataFromCloud(dataFromCloud: 'dataFromCloud');
    
    //! ALTERNATIVE WAY TO WRITE SYNTAX
    final String parsedData = await _getDataFromCloud().then((dataFromCloud) async {
      return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    });
    */
    return parsedData;
  }
}
