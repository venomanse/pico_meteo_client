import 'hive_key_value_security_storage.dart';
import 'models/biometric_data.dart';

class _SecurityStorageKeys {
  static const String biometricData = 'biometric_data';
}

class SecurityStorage extends KeyValueSecurityStorageImpl {
  SecurityStorage()
      : super(
          storageName: 'security_storage',
          //openssl rand -base64 32
          key: 'IryMKTTOBIVYHMGVBt7pIu8eNpZm5Z403VyLbOzz7HM=',
        );
}

// BiometricData
extension SecurityStorageBiometricDataExtension on SecurityStorage {
  Future<void> putBiometricData(BiometricData value) async =>
      put(_SecurityStorageKeys.biometricData, value);

  Future<BiometricData?> getBiometricData() async =>
      get<BiometricData?>(_SecurityStorageKeys.biometricData);

  Future<void> deleteBiometricData() async =>
      delete(_SecurityStorageKeys.biometricData);
}
