import 'package:restricted_login_flow/src/data/data_sources/fci_code/fci_code_datasource.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/infrastructure/maya_method_channel/maya_method_channel.dart';

class FCICodeMethodChannelDataSource implements FCICodeDataSource {
  final IMayaMethodChannel methodChannel;

  FCICodeMethodChannelDataSource(this.methodChannel);

  @override
  Future<String> getFCICode() async {
    final String restrictionCode = await methodChannel.get(
          methodChannelData: MethodChannelData.restrictionCode,
        ) ??
        Strings.defaultFCICode;
    return restrictionCode;
  }
}
