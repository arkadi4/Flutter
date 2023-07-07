import 'package:factory_pattern/factory_pattern_classes/transport.dart';

class AutomobileTransport extends Transport {

  AutomobileTransport({
    super.deliveryOrgTitle = 'automobile delivery company',
    super.loadCapacity = 'automobile transport capacity',
    super.maxCargoDimension = 'automobile transport max cargo dimension',
  });

  @override
  String toString() {
    return 'Automobile transport with load capacity :\n          $loadCapacity , \n'
        'maximum cargo dimension :\n          $maxCargoDimension ,\n'
        'from the organization: \n          $deliveryOrgTitle ,\n';
  }
}