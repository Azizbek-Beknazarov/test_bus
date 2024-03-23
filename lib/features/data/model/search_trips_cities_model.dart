import 'package:test_bus/features/domain/entity/trip_entity.dart';

class SearchTripsCitiesModel {
  SearchTripsCitiesModel({
    this.trips,
  });

  SearchTripsCitiesModel.fromJson(Map<String, dynamic> json) {
    if (json['trips'] != null) {
      trips = [];
      json['trips'].forEach((v) {
        trips?.add(Trips.fromJson(v));
      });
    }
  }

  List<Trips>? trips;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (trips != null) {
      map['trips'] = trips?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  TripEntity toEntity() {
    return TripEntity(trips: trips?.map((e) => e.toEntity()).toList());
  }
}

class Trips {
  Trips({
    this.id,
    this.routeId,
    this.scheduleTripId,
    this.routeName,
    this.routeNum,
    this.carrier,
    this.bus,
    this.driver1,
    this.driver2,
    this.frequency,
    this.waybillNum,
    this.status,
    this.statusPrint,
    this.statusReason,
    this.statusComment,
    this.statusDate,
    this.departure,
    this.departureTime,
    this.arrivalToDepartureTime,
    this.destination,
    this.arrivalTime,
    this.distance,
    this.duration,
    this.transitSeats,
    this.freeSeatsAmount,
    this.passengerFareCost,
    this.fares,
    this.platform,
    this.onSale,
    this.route,
    this.additional,
    this.additionalTripTime,
    this.transitTrip,
    this.saleStatus,
    this.acbpdp,
    this.factTripReturnTime,
    this.currency,
    this.principalTaxId,
    this.carrierData,
    this.passengerFareCostAvibus,
  });

  Trips.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    routeId = json['RouteId'];
    scheduleTripId = json['ScheduleTripId'];
    routeName = json['RouteName'];
    routeNum = json['RouteNum'];
    carrier = json['Carrier'];
    bus = json['Bus'] != null ? Bus.fromJson(json['Bus']) : null;
    driver1 = json['Driver1'];
    driver2 = json['Driver2'];
    frequency = json['Frequency'];
    waybillNum = json['WaybillNum'];
    status = json['Status'];
    statusPrint = json['StatusPrint'];
    statusReason = json['StatusReason'];
    statusComment = json['StatusComment'];
    statusDate = json['StatusDate'];
    departure = json['Departure'] != null
        ? Departure.fromJson(json['Departure'])
        : null;
    departureTime = json['DepartureTime'];
    arrivalToDepartureTime = json['ArrivalToDepartureTime'];
    destination = json['Destination'] != null
        ? Destination.fromJson(json['Destination'])
        : null;
    arrivalTime = json['ArrivalTime'];
    distance = json['Distance'];
    duration = json['Duration'];
    transitSeats = json['TransitSeats'];
    freeSeatsAmount = json['FreeSeatsAmount'];
    passengerFareCost = json['PassengerFareCost'];
    if (json['Fares'] != null) {
      fares = [];
    }
    platform = json['Platform'];
    onSale = json['OnSale'];
    if (json['Route'] != null) {
      route = [];
    }
    additional = json['Additional'];
    if (json['AdditionalTripTime'] != null) {
      additionalTripTime = [];
    }
    transitTrip = json['TransitTrip'];
    saleStatus = json['SaleStatus'];
    acbpdp = json['ACBPDP'];
    factTripReturnTime = json['FactTripReturnTime'];
    currency = json['Currency'];
    principalTaxId = json['PrincipalTaxId'];
    carrierData = json['CarrierData'] != null
        ? CarrierData.fromJson(json['CarrierData'])
        : null;
    passengerFareCostAvibus = json['PassengerFareCostAvibus'];
  }

  String? id;
  String? routeId;
  String? scheduleTripId;
  String? routeName;
  String? routeNum;
  String? carrier;
  Bus? bus;
  String? driver1;
  String? driver2;
  String? frequency;
  String? waybillNum;
  String? status;
  String? statusPrint;
  String? statusReason;
  String? statusComment;
  String? statusDate;
  Departure? departure;
  String? departureTime;
  String? arrivalToDepartureTime;
  Destination? destination;
  String? arrivalTime;
  String? distance;
  num? duration;
  bool? transitSeats;
  num? freeSeatsAmount;
  String? passengerFareCost;
  List<dynamic>? fares;
  num? platform;
  bool? onSale;
  List<dynamic>? route;
  bool? additional;
  List<dynamic>? additionalTripTime;
  dynamic transitTrip;
  dynamic saleStatus;
  bool? acbpdp;
  dynamic factTripReturnTime;
  String? currency;
  String? principalTaxId;
  CarrierData? carrierData;
  String? passengerFareCostAvibus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['RouteId'] = routeId;
    map['ScheduleTripId'] = scheduleTripId;
    map['RouteName'] = routeName;
    map['RouteNum'] = routeNum;
    map['Carrier'] = carrier;
    if (bus != null) {
      map['Bus'] = bus?.toJson();
    }
    map['Driver1'] = driver1;
    map['Driver2'] = driver2;
    map['Frequency'] = frequency;
    map['WaybillNum'] = waybillNum;
    map['Status'] = status;
    map['StatusPrint'] = statusPrint;
    map['StatusReason'] = statusReason;
    map['StatusComment'] = statusComment;
    map['StatusDate'] = statusDate;
    if (departure != null) {
      map['Departure'] = departure?.toJson();
    }
    map['DepartureTime'] = departureTime;
    map['ArrivalToDepartureTime'] = arrivalToDepartureTime;
    if (destination != null) {
      map['Destination'] = destination?.toJson();
    }
    map['ArrivalTime'] = arrivalTime;
    map['Distance'] = distance;
    map['Duration'] = duration;
    map['TransitSeats'] = transitSeats;
    map['FreeSeatsAmount'] = freeSeatsAmount;
    map['PassengerFareCost'] = passengerFareCost;
    if (fares != null) {
      map['Fares'] = fares?.map((v) => v.toJson()).toList();
    }
    map['Platform'] = platform;
    map['OnSale'] = onSale;
    if (route != null) {
      map['Route'] = route?.map((v) => v.toJson()).toList();
    }
    map['Additional'] = additional;
    if (additionalTripTime != null) {
      map['AdditionalTripTime'] =
          additionalTripTime?.map((v) => v.toJson()).toList();
    }
    map['TransitTrip'] = transitTrip;
    map['SaleStatus'] = saleStatus;
    map['ACBPDP'] = acbpdp;
    map['FactTripReturnTime'] = factTripReturnTime;
    map['Currency'] = currency;
    map['PrincipalTaxId'] = principalTaxId;
    if (carrierData != null) {
      map['CarrierData'] = carrierData?.toJson();
    }
    map['PassengerFareCostAvibus'] = passengerFareCostAvibus;
    return map;
  }

  TripsEntity toEntity() => TripsEntity(
        carrier: carrier,
        bus: bus?.toEntity(),
        driver1: driver1,
        departure: departure?.toEntity(),
        departureTime: departureTime,
        destination: destination?.toEntity(),
        arrivalTime: arrivalTime,
      );
}

class CarrierData {
  CarrierData({
    this.carrierName,
    this.carrierTaxId,
    this.carrierStateRegNum,
    this.carrierPersonalData,
    this.carrierAddress,
    this.carrierWorkingHours,
  });

  CarrierData.fromJson(Map<String, dynamic> json) {
    carrierName = json['CarrierName'];
    carrierTaxId = json['CarrierTaxId'];
    carrierStateRegNum = json['CarrierStateRegNum'];
    if (json['CarrierPersonalData'] != null) {
      carrierPersonalData = [];
      json['CarrierPersonalData'].forEach((v) {
        carrierPersonalData?.add(CarrierPersonalData.fromJson(v));
      });
    }
    carrierAddress = json['CarrierAddress'];
    carrierWorkingHours = json['CarrierWorkingHours'];
  }

  String? carrierName;
  String? carrierTaxId;
  String? carrierStateRegNum;
  List<CarrierPersonalData>? carrierPersonalData;
  String? carrierAddress;
  String? carrierWorkingHours;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CarrierName'] = carrierName;
    map['CarrierTaxId'] = carrierTaxId;
    map['CarrierStateRegNum'] = carrierStateRegNum;
    if (carrierPersonalData != null) {
      map['CarrierPersonalData'] =
          carrierPersonalData?.map((v) => v.toJson()).toList();
    }
    map['CarrierAddress'] = carrierAddress;
    map['CarrierWorkingHours'] = carrierWorkingHours;
    return map;
  }
}

class CarrierPersonalData {
  CarrierPersonalData({
    this.name,
    this.caption,
    this.mandatory,
    this.personIdentifier,
    this.type,
    this.valueVariants,
    this.inputMask,
    this.value,
    this.valueKind,
    this.defaultValueVariant,
    this.documentIssueDateRequired,
    this.documentIssueOrgRequired,
    this.documentValidityDateRequired,
    this.documentInceptionDateRequired,
    this.documentIssuePlaceRequired,
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
  });

  CarrierPersonalData.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    caption = json['Caption'];
    mandatory = json['Mandatory'];
    personIdentifier = json['PersonIdentifier'];
    type = json['Type'];
    if (json['ValueVariants'] != null) {
      valueVariants = [];
    }
    inputMask = json['InputMask'];
    value = json['Value'];
    valueKind = json['ValueKind'];
    defaultValueVariant = json['DefaultValueVariant'] != null
        ? DefaultValueVariant.fromJson(json['DefaultValueVariant'])
        : null;
    documentIssueDateRequired = json['DocumentIssueDateRequired'];
    documentIssueOrgRequired = json['DocumentIssueOrgRequired'];
    documentValidityDateRequired = json['DocumentValidityDateRequired'];
    documentInceptionDateRequired = json['DocumentInceptionDateRequired'];
    documentIssuePlaceRequired = json['DocumentIssuePlaceRequired'];
    value1 = json['Value1'];
    value2 = json['Value2'];
    value3 = json['Value3'];
    value4 = json['Value4'];
    value5 = json['Value5'];
  }

  String? name;
  String? caption;
  bool? mandatory;
  bool? personIdentifier;
  String? type;
  List<dynamic>? valueVariants;
  dynamic inputMask;
  String? value;
  dynamic valueKind;
  DefaultValueVariant? defaultValueVariant;
  dynamic documentIssueDateRequired;
  dynamic documentIssueOrgRequired;
  dynamic documentValidityDateRequired;
  dynamic documentInceptionDateRequired;
  dynamic documentIssuePlaceRequired;
  dynamic value1;
  dynamic value2;
  dynamic value3;
  dynamic value4;
  dynamic value5;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['Caption'] = caption;
    map['Mandatory'] = mandatory;
    map['PersonIdentifier'] = personIdentifier;
    map['Type'] = type;
    if (valueVariants != null) {
      map['ValueVariants'] = valueVariants?.map((v) => v.toJson()).toList();
    }
    map['InputMask'] = inputMask;
    map['Value'] = value;
    map['ValueKind'] = valueKind;
    if (defaultValueVariant != null) {
      map['DefaultValueVariant'] = defaultValueVariant?.toJson();
    }
    map['DocumentIssueDateRequired'] = documentIssueDateRequired;
    map['DocumentIssueOrgRequired'] = documentIssueOrgRequired;
    map['DocumentValidityDateRequired'] = documentValidityDateRequired;
    map['DocumentInceptionDateRequired'] = documentInceptionDateRequired;
    map['DocumentIssuePlaceRequired'] = documentIssuePlaceRequired;
    map['Value1'] = value1;
    map['Value2'] = value2;
    map['Value3'] = value3;
    map['Value4'] = value4;
    map['Value5'] = value5;
    return map;
  }
}

class DefaultValueVariant {
  DefaultValueVariant({
    this.name,
    this.inputMask,
    this.valueProperty1,
    this.valueProperty2,
    this.valueProperty3,
    this.valueProperty4,
    this.valueProperty5,
  });

  DefaultValueVariant.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    inputMask = json['InputMask'];
    valueProperty1 = json['ValueProperty1'];
    valueProperty2 = json['ValueProperty2'];
    valueProperty3 = json['ValueProperty3'];
    valueProperty4 = json['ValueProperty4'];
    valueProperty5 = json['ValueProperty5'];
  }

  dynamic name;
  dynamic inputMask;
  dynamic valueProperty1;
  dynamic valueProperty2;
  dynamic valueProperty3;
  dynamic valueProperty4;
  dynamic valueProperty5;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['InputMask'] = inputMask;
    map['ValueProperty1'] = valueProperty1;
    map['ValueProperty2'] = valueProperty2;
    map['ValueProperty3'] = valueProperty3;
    map['ValueProperty4'] = valueProperty4;
    map['ValueProperty5'] = valueProperty5;
    return map;
  }
}

class Destination {
  Destination({
    this.name,
    this.code,
    this.id,
    this.country,
    this.region,
    this.district,
    this.automated,
    this.hasDestinations,
    this.utc,
    this.gPSCoordinates,
    this.locationType,
    this.locality,
    this.stoppingPlace,
    this.address,
    this.phone,
  });

  Destination.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    code = json['Code'];
    id = json['Id'];
    country = json['Country'];
    region = json['Region'];
    district = json['District'];
    automated = json['Automated'];
    hasDestinations = json['HasDestinations'];
    utc = json['UTC'];
    gPSCoordinates = json['GPSCoordinates'];
    locationType = json['LocationType'];
    locality = json['Locality'];
    stoppingPlace = json['StoppingPlace'];
    address = json['Address'];
    phone = json['Phone'];
  }

  String? name;
  String? code;
  String? id;
  String? country;
  String? region;
  dynamic district;
  bool? automated;
  bool? hasDestinations;
  String? utc;
  String? gPSCoordinates;
  String? locationType;
  dynamic locality;
  dynamic stoppingPlace;
  String? address;
  dynamic phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['Code'] = code;
    map['Id'] = id;
    map['Country'] = country;
    map['Region'] = region;
    map['District'] = district;
    map['Automated'] = automated;
    map['HasDestinations'] = hasDestinations;
    map['UTC'] = utc;
    map['GPSCoordinates'] = gPSCoordinates;
    map['LocationType'] = locationType;
    map['Locality'] = locality;
    map['StoppingPlace'] = stoppingPlace;
    map['Address'] = address;
    map['Phone'] = phone;
    return map;
  }

  DestinationEntity toEntity() => DestinationEntity(name: name);
}

class Departure {
  Departure({
    this.name,
    this.code,
    this.id,
    this.country,
    this.region,
    this.district,
    this.automated,
    this.hasDestinations,
    this.utc,
    this.gPSCoordinates,
    this.locationType,
    this.locality,
    this.stoppingPlace,
    this.address,
    this.phone,
  });

  Departure.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    code = json['Code'];
    id = json['Id'];
    country = json['Country'];
    region = json['Region'];
    district = json['District'];
    automated = json['Automated'];
    hasDestinations = json['HasDestinations'];
    utc = json['UTC'];
    gPSCoordinates = json['GPSCoordinates'];
    locationType = json['LocationType'];
    locality = json['Locality'];
    stoppingPlace = json['StoppingPlace'];
    address = json['Address'];
    phone = json['Phone'];
  }

  String? name;
  String? code;
  String? id;
  String? country;
  String? region;
  dynamic district;
  bool? automated;
  bool? hasDestinations;
  String? utc;
  String? gPSCoordinates;
  String? locationType;
  dynamic locality;
  dynamic stoppingPlace;
  String? address;
  dynamic phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['Code'] = code;
    map['Id'] = id;
    map['Country'] = country;
    map['Region'] = region;
    map['District'] = district;
    map['Automated'] = automated;
    map['HasDestinations'] = hasDestinations;
    map['UTC'] = utc;
    map['GPSCoordinates'] = gPSCoordinates;
    map['LocationType'] = locationType;
    map['Locality'] = locality;
    map['StoppingPlace'] = stoppingPlace;
    map['Address'] = address;
    map['Phone'] = phone;
    return map;
  }

  DepartureEntity toEntity() => DepartureEntity(name: name);
}

class Bus {
  Bus({
    this.id,
    this.model,
    this.licencePlate,
    this.name,
    this.seatsClass,
    this.seatCapacity,
    this.standCapacity,
    this.baggageCapacity,
    this.seatsScheme,
    this.garageNum,
  });

  Bus.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    model = json['Model'];
    licencePlate = json['LicencePlate'];
    name = json['Name'];
    seatsClass = json['SeatsClass'];
    seatCapacity = json['SeatCapacity'];
    standCapacity = json['StandCapacity'];
    baggageCapacity = json['BaggageCapacity'];
    if (json['SeatsScheme'] != null) {
      seatsScheme = [];
    }
    garageNum = json['GarageNum'];
  }

  String? id;
  String? model;
  String? licencePlate;
  String? name;
  String? seatsClass;
  num? seatCapacity;
  num? standCapacity;
  num? baggageCapacity;
  List<dynamic>? seatsScheme;
  dynamic garageNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Model'] = model;
    map['LicencePlate'] = licencePlate;
    map['Name'] = name;
    map['SeatsClass'] = seatsClass;
    map['SeatCapacity'] = seatCapacity;
    map['StandCapacity'] = standCapacity;
    map['BaggageCapacity'] = baggageCapacity;
    if (seatsScheme != null) {
      map['SeatsScheme'] = seatsScheme?.map((v) => v.toJson()).toList();
    }
    map['GarageNum'] = garageNum;
    return map;
  }

  BusEntity toEntity() => BusEntity(
        model: model ?? '',
        licencePlate: licencePlate ?? '',
      );
}
