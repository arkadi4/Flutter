import 'package:factory_pattern/factory_pattern_classes/transport.dart';

List airTransportTypeList =['inside city', 'between cities', 'between countries'];

class AirTransport extends Transport {
  late String airTransportType;

  AirTransport({
    super.deliveryOrgTitle = 'Air delivery company',
    super.loadCapacity = 'air transport capacity',
    super.maxCargoDimension = 'air transport max cargo dimension',
    this.airTransportType = 'inside city',
  });

  void changeAirTransportType () {
    if (airTransportType == airTransportTypeList[0]) {
      airTransportType = airTransportTypeList[1];
    } else if (airTransportType == airTransportTypeList[1]) {
      airTransportType = airTransportTypeList[2];
    } else if (airTransportType == airTransportTypeList[2]) {
      airTransportType = airTransportTypeList[0];
    }
  }

  @override
  String toString() {
    return 'Air transport with load capacity :\n           $loadCapacity ,\n'
        'maximum cargo dimension :\n           $maxCargoDimension ,\n'
        'from the organization :\n           $deliveryOrgTitle ,\n'
        'with air transport type by\n           ${airTransportType}';
  }
}