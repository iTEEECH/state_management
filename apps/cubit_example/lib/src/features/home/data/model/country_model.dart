import 'package:equatable/equatable.dart';
import 'package:cubit_example/src/features/home/home.dart';

class CountryModel extends Equatable {
  final String name;
  final String code;
  final String flag;

  const CountryModel({required this.name, required this.code, required this.flag});

  @override
  List<Object> get props {
    return [name, code, flag];
  }

  Country toEntity() {
    return Country(name: name, code: code, flag: flag);
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(name: map['name']['official'] ?? '', code: map['cca2'] ?? '', flag: map['flags']['png'] ?? '');
  }
}
