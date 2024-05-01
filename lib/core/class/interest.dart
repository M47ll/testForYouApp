import 'package:flutter_tagging_plus/flutter_tagging_plus.dart';

class Interest extends Taggable {
  final String name;
  final int position;

  const Interest({
    required this.name,
    required this.position,
  });

  @override
  List<Object> get props => [name];

  /// Converts the class to json string.
  String toJson() => '''  {
    "name": $name,\n
    "position": $position\n
  }''';
}
