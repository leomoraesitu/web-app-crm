import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Production';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _appEnv = data['appEnv'];
      _appName = data['appName'];
      _appVersion = data['appVersion'];
      _appBuild = data['appBuild'];
      _firebaseProjectId = data['firebaseProjectId'];
      _firebaseRegion = data['firebaseRegion'];
      _firebaseStorageBucket = data['firebaseStorageBucket'];
      _appBaseUrl = data['appBaseUrl'];
      _storageUsersPath = data['storageUsersPath'];
      _storageUploadsPath = data['storageUploadsPath'];
      _storageLeadsPath = data['storageLeadsPath'];
      _featureAnalytics = data['featureAnalytics'];
      _featureAiAssistant = data['featureAiAssistant'];
      _enableDebugLogs = data['enableDebugLogs'];
      _enableCrashReporting = data['enableCrashReporting'];
      _enablePerformanceMonitoring = data['enablePerformanceMonitoring'];
      _featureDevBanner = data['featureDevBanner'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _appEnv = '';
  String get appEnv => _appEnv;

  String _appName = '';
  String get appName => _appName;

  String _appVersion = '';
  String get appVersion => _appVersion;

  String _appBuild = '';
  String get appBuild => _appBuild;

  String _firebaseProjectId = '';
  String get firebaseProjectId => _firebaseProjectId;

  String _firebaseRegion = '';
  String get firebaseRegion => _firebaseRegion;

  String _firebaseStorageBucket = '';
  String get firebaseStorageBucket => _firebaseStorageBucket;

  String _appBaseUrl = '';
  String get appBaseUrl => _appBaseUrl;

  String _storageUsersPath = '';
  String get storageUsersPath => _storageUsersPath;

  String _storageUploadsPath = '';
  String get storageUploadsPath => _storageUploadsPath;

  String _storageLeadsPath = '';
  String get storageLeadsPath => _storageLeadsPath;

  String _featureAnalytics = '';
  String get featureAnalytics => _featureAnalytics;

  String _featureAiAssistant = '';
  String get featureAiAssistant => _featureAiAssistant;

  String _enableDebugLogs = '';
  String get enableDebugLogs => _enableDebugLogs;

  String _enableCrashReporting = '';
  String get enableCrashReporting => _enableCrashReporting;

  String _enablePerformanceMonitoring = '';
  String get enablePerformanceMonitoring => _enablePerformanceMonitoring;

  String _featureDevBanner = '';
  String get featureDevBanner => _featureDevBanner;
}
