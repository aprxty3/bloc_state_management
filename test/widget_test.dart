import 'package:bloc_state_management/data/models/data_home.dart';
import 'package:bloc_state_management/data/provider/masakan_provider.dart';
import 'package:bloc_state_management/data/provider/user_provider.dart';
import 'package:bloc_state_management/data/repository/random_repository.dart';

void main() async {
  RandomRepository randomRepository = RandomRepository();

  Map<String, dynamic> dataRandom = await randomRepository.getRandomData();

  DataHomeModels data = dataRandom["data"];

  print(data.toJson());
}
