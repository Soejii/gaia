enum EdutainmentType {
  all,
  school,
  sidigs,
}

extension GetEdutainmentType on EdutainmentType {
  String get label => switch (this) {
        EdutainmentType.all => 'all',
        EdutainmentType.school => 'school',
        EdutainmentType.sidigs => 'sidigs'
      };
}

const edutainmentTypes = [
  EdutainmentType.all,
  EdutainmentType.school,
  EdutainmentType.sidigs,
];
