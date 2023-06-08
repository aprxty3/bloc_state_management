import 'package:equatable/equatable.dart';

void main() {
  Orang orang1 = Orang('Rizal', 20);
  Orang orang2 = Orang('Riza', 20);

  print(orang1 == orang2);
  print(orang1.toString());
  print(orang2.toString());
}

class Orang extends Equatable {
  String name;
  int umur;
  Orang(this.name, this.umur);

  @override
  List<Object> get props => [name, umur];
}
