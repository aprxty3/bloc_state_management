import 'package:bloc_state_management/data/provider/masakan_provider.dart';
import 'package:bloc_state_management/data/provider/user_provider.dart';

void main() async {
  UserProvider userProvider = UserProvider();
  MasakanProvider masakanProvider = MasakanProvider();

  print(await userProvider.getDataUser());
  print(await masakanProvider.getDataMasakan());
}
