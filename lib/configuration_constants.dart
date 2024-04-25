import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConfigurationConstants {
  static final String DATASOURCE_VERSION = dotenv.get('DATASOURCE_VERSION');
  static final String DATASOURCE_SERVER_IP = dotenv.get('DATASOURCE_SERVER_IP');
}
