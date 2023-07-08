import 'package:factory_pattern/factory_pattern_classes/transport.dart';



class AirTransport extends Transport {
  String airTransportTypeByRange;
  String airTransportTypeByPurpose;
  List airTransportTypeByRangeList =['inside city', 'between cities', 'between countries'];

  AirTransport({
    super.deliveryOrgTitle = 'Air delivery company',
    super.loadCapacity = 'air transport capacity',
    super.maxCargoDimension = 'air transport max cargo dimension',
    this.airTransportTypeByRange = 'inside city',
    this.airTransportTypeByPurpose = 'passenger'
  });

  void changeAirTransportTypeByRange () {
    if (airTransportTypeByRange == airTransportTypeByRangeList[0]) {
      airTransportTypeByRange = airTransportTypeByRangeList[1];
    } else if (airTransportTypeByRange == airTransportTypeByRangeList[1]) {
      airTransportTypeByRange = airTransportTypeByRangeList[2];
    } else if (airTransportTypeByRange == airTransportTypeByRangeList[2]) {
      airTransportTypeByRange = airTransportTypeByRangeList[0];
    }
  }

  void changeAirTransportTypeByPurpose() {
    airTransportTypeByPurpose = (airTransportTypeByPurpose == 'passenger')
                              ? 'cargo'
                              : 'passenger';
  }

  @override
  String toString() {
    return 'Air transport with load capacity :\n           $loadCapacity ,\n'
        'maximum cargo dimension :\n           $maxCargoDimension ,\n'
        'from the organization :\n           $deliveryOrgTitle ,\n'
        'with air transport type by range:\n           ${airTransportTypeByRange},\n'
        'with air transport type by cargo:\n           ${airTransportTypeByPurpose},\n';
  }
}