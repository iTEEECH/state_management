import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String name;
  final String code;
  final String flag;

  const Country({required this.name, required this.code, required this.flag});

  @override
  List<Object> get props {
    return [name, code, flag];
  }
}
