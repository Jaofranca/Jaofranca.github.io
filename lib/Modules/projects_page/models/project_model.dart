enum TechnologyUsed {
  flutter,
  unity,
  dart,
  python,
  java,
  springBoot,
  backEnd,
}

enum PlatformType {
  mobile,
  web,
  desktop,
}

class Project {
  final String title;
  final String subtitle;
  final String link;
  final List<TechnologyUsed> technologyUsed;
  final List<PlatformType> platformType;

  Project({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.technologyUsed,
    required this.platformType,
  });
}
