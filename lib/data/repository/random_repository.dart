import 'dart:math';

import 'package:bloc_state_management/data/models/data_home.dart';
import 'package:bloc_state_management/data/models/user.dart';

import '../models/masakan.dart';
import '../provider/masakan_provider.dart';
import '../provider/user_provider.dart';

class RandomRepository {
  UserProvider userProvider = UserProvider();
  MasakanProvider masakanProvider = MasakanProvider();

  Future<Map<String, dynamic>> getRandomData() async {
    Map<String, dynamic> dataUser = await userProvider.getDataUser();
    Map<String, dynamic> dataMasakan = await masakanProvider.getDataMasakan();
    if (dataUser['error'] == true || dataMasakan['error'] == true) {
      return {
        "error": true,
        "message": "Gagal mendapatkan data",
      };
    }

    UserListResponse userListResponse = dataUser['data'] as UserListResponse;
    late DataUser dataRandomUser;

    if (userListResponse.data != null) {
      userListResponse.data!.randomUser();
    } else {
      dataRandomUser = DataUser();
    }

    MasakanModel masakanModel = dataMasakan['data'] as MasakanModel;
    late Results dataRandomMasakan;

    if (masakanModel.results != null) {
      dataRandomMasakan = masakanModel.results!.randomMasakan();
    } else {
      dataRandomMasakan = Results();
    }

    return {
      "error": false,
      "message": "Berhasil mendapatkan data",
      "data": DataHomeModels(
        fullname: "${dataRandomUser.firstName} ${dataRandomUser.lastName}",
        email: "${dataRandomUser.email}",
        profile: "${dataRandomUser.avatar}",
        masakan: "${dataRandomMasakan.title}",
        gambarMasakan: "${dataRandomMasakan.thumb}",
        porsi: "${dataRandomMasakan.serving}",
        tingkatKesulitan: "${dataRandomMasakan.difficulty}",
      )
    };
  }
}

extension RandomUser on List<DataUser> {
  DataUser randomUser() {
    return elementAt(
      Random().nextInt(length - 1),
    );
  }
}

extension RandomMasakan on List<Results> {
  Results randomMasakan() {
    return elementAt(
      Random().nextInt(length - 1),
    );
  }
}
