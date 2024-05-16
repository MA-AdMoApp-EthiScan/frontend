import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConfigurationConstants {
  static final String datasourceVersion = dotenv.get('DATASOURCE_VERSION');
  static final String datasourceServerIp = dotenv.get('DATASOURCE_SERVER_IP');
}
