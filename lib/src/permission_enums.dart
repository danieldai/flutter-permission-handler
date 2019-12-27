/// Defines the state of a permission group
class PermissionStatus {
  const PermissionStatus._(this.value);

  final int value;

  /// Permission to access the requested feature is denied by the user.
  static const PermissionStatus denied = PermissionStatus._(0);

  /// The feature is disabled (or not available) on the device.
  static const PermissionStatus disabled = PermissionStatus._(1);

  /// Permission to access the requested feature is granted by the user.
  static const PermissionStatus granted = PermissionStatus._(2);

  /// Permission to access the requested feature is denied by the OS (only on iOS).
  /// The user cannot change this app's status, possibly due to active restrictions such as
  /// parental controls being in place.
  static const PermissionStatus restricted = PermissionStatus._(3);

  /// Permission is in an unknown state
  static const PermissionStatus unknown = PermissionStatus._(4);

  static const List<PermissionStatus> values = <PermissionStatus>[
    denied,
    disabled,
    granted,
    restricted,
    unknown,
  ];

  static const List<String> _names = <String>[
    'denied',
    'disabled',
    'granted',
    'restricted',
    'unknown',
  ];

  @override
  String toString() => 'PermissionStatus.${_names[value]}';
}

/// Defines the state of a service related to the permission group
class ServiceStatus {
  const ServiceStatus._(this.value);

  final int value;

  /// The service for the supplied permission group is disabled.
  static const ServiceStatus disabled = ServiceStatus._(0);

  /// The service for the supplied permission group is enabled.
  static const ServiceStatus enabled = ServiceStatus._(1);

  /// There is no service for the supplied permission group.
  static const ServiceStatus notApplicable = ServiceStatus._(2);

  /// The unknown service status indicates the state of the service could not be determined.
  static const ServiceStatus unknown = ServiceStatus._(3);

  static const List<ServiceStatus> values = <ServiceStatus>[
    disabled,
    enabled,
    notApplicable,
    unknown,
  ];

  static const List<String> _names = <String>[
    'disabled',
    'enabled',
    'notApplicable',
    'unknown',
  ];

  @override
  String toString() => 'ServiceStatus.${_names[value]}';
}

/// Defines the permission groups for which permissions can be checked or requested.
class PermissionGroup {
  const PermissionGroup._(this.value);

  final int value;

  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation (Always and WhenInUse)
  static const PermissionGroup location = PermissionGroup._(0);

  /// Android:
  ///   When running on Android < Q: Fine and Coarse Location
  ///   When running on Android Q and above: Background Location Permission
  /// iOS: CoreLocation - Always
  static const PermissionGroup locationAlways = PermissionGroup._(1);

  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation - WhenInUse
  static const PermissionGroup locationWhenInUse = PermissionGroup._(2);

  /// Android: Phone
  /// iOS: Nothing
  static const PermissionGroup phone = PermissionGroup._(3);

  /// Android: External Storage
  /// iOS: Access to folders like `Documents` or `Downloads`. Implicitly granted.
  static const PermissionGroup storage = PermissionGroup._(4);

  /// The unknown permission only used for return type, never requested
  static const PermissionGroup unknown = PermissionGroup._(5);

  static const List<PermissionGroup> values = <PermissionGroup>[
    location,
    locationAlways,
    locationWhenInUse,
    phone,
    storage,
    unknown,
  ];

  static const List<String> _names = <String>[
    'location',
    'locationAlways',
    'locationWhenInUse',
    'phone',
    'storage',
    'ignoreBatteryOptimizations',
    'unknown',
  ];

  @override
  String toString() => 'PermissionGroup.${_names[value]}';
}
