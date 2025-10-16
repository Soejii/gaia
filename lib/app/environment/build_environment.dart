class BuildEnv {
  static const client = String.fromEnvironment('CLIENT', defaultValue: '_default');
  static const env    = String.fromEnvironment('ENV',    defaultValue: 'dev');
}
