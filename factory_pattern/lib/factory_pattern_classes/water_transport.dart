import 'package:factory_pattern/factory_pattern_classes/transport.dart';

enum WaterTransportType {
  river, sea
}

class WaterTransport extends Transport {
   late String waterTransportType;

  WaterTransport({
    super.deliveryOrgTitle = 'Water delivery company',
    super.loadCapacity = 'water transport capacity',
    super.maxCargoDimension = 'water transport max cargo dimension',
    this.waterTransportType='river',
  });


  void changeWaterTransportType() {
    waterTransportType = (waterTransportType == 'river')
                          ? WaterTransportType.sea.toString()
                          : WaterTransportType.river.toString();
  }

  @override
  String toString() {
    return 'Water transport with load capacity:\n           $loadCapacity ,\n'
        'maximum cargo dimension:\n           $maxCargoDimension ,\n'
        'from the organization:\n           $deliveryOrgTitle ,\n'
        'will deliver by:\n           ${waterTransportType}';
  }
}