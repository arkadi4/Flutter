import 'package:factory_pattern/factory_pattern_classes/transport.dart';

class RailroadTransport extends Transport {
  String trackSize;
  String trackArrangement;

  RailroadTransport({
    super.deliveryOrgTitle = 'Railroad delivery company',
    super.loadCapacity = 'Railroad transport capacity',
    super.maxCargoDimension = 'Railroad transport max cargo dimension',
    this.trackSize = 'european',
    this.trackArrangement = 'with ballast',
  });

  void changeTrackArrangement() {
    trackArrangement = (trackArrangement == 'with ballast')
        ? 'without ballast'
        : 'with ballast';
  }

  @override
  String toString() {
    return 'Railroad transport with load capacity:\n           $loadCapacity,\n'
        'maximum cargo dimension:\n           $maxCargoDimension ,\n'
        'from the organization:\n           $deliveryOrgTitle ,\n'
        'with track size :\n           ${trackSize} ,\n'
        'with track arrangement :\n           $trackArrangement';
  }
}