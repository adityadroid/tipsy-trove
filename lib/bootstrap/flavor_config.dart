class FlavorConfig {
  FlavorConfig._internal();

  /// Creates an instance of `FlavorConfig` from the provided `configMap`.
  ///
  /// The `apiBaseUrl` field is mapped to the `"BASE_URL"` key in the configMap
  /// If the `"BASE_URL"` key is missing or the value is `null`, an empty string
  /// is assigned as the default value.
  factory FlavorConfig.fromMap(Map<String, String> configMap) {
    _instance ??= FlavorConfig._internal();
    _instance!.apiBaseUrl = configMap['API_BASE_URL'] ?? '';
    return _instance!;
  }

  /// Retrieves the current instance of `FlavorConfig`.
  static FlavorConfig getInstance() {
    return _instance!;
  }

  static FlavorConfig? _instance;

  late String apiBaseUrl;
}
