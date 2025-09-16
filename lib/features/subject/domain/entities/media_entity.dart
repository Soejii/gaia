import 'package:gaia/features/subject/data/types/media_type.dart';

class MediaEntity {
  final int id;
  final String? name;
  final String? link;
  final MediaType type;

  MediaEntity({
    required this.id,
    required this.name,
    required this.link,
    required this.type,
  });
}
