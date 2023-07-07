import 'package:factory_pattern/factory_pattern_classes/water_transport.dart';
import 'package:factory_pattern/factory_pattern_classes/railroad_transport.dart';
import 'package:factory_pattern/factory_pattern_classes/air_transport.dart';
import 'package:factory_pattern/factory_pattern_classes/automobile_transport.dart';

enum TypesOfTransport {
  waterTransportType, railroadTransportType,
  airTransportType, automobileTransportType
}

class Transport {

  String deliveryOrgTitle;
  String loadCapacity;
  String maxCargoDimension;

  Transport({
    this.deliveryOrgTitle='GlobalPartnerShip',
    this.loadCapacity= 'standard',
    this.maxCargoDimension= 'standard'});

  static Transport factory(TypesOfTransport typesOfTransport) {
    switch (typesOfTransport) {
      case TypesOfTransport.waterTransportType:
        return WaterTransport();
      case TypesOfTransport.railroadTransportType:
        return RailroadTransport();
      case TypesOfTransport.airTransportType:
        return AirTransport();
      case TypesOfTransport.automobileTransportType:
        return AutomobileTransport();
      default:
        throw ArgumentError();
    }
  }


  String getDeliveryOrgTitle(){
    return deliveryOrgTitle;
  }

  String getLoadCapacity(){
    return loadCapacity;
  }

  String getMaxCargoDimension(){
    return maxCargoDimension;
  }
}