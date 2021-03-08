import 'package:json_annotation/json_annotation.dart';
import 'package:openmhealth_schemas/openmhealth_schemas.dart';

part 'blood_glucose.g.dart';

/// This schema represents a person’s blood glucose level,
/// on what type of specimen the measurement was made, and the relationship of the measure to meals or physical activity.
/// This schema can be used for either a single blood glucose measurement,
/// or for basic descriptive statistics (see the Descriptive statistic schema)
///
/// OMH version 1.0
/// See <a href="https://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-glucose">Blood glucose</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class BloodGlucose extends Measure {
  static SchemaId SCHEMA_ID = new SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE,
      SchemaSupport.BLOOD_GLUCOSE,
      new SchemaVersion(1, 0));

  /// Creates a [BloodGlucose]. The [bloodGlucose] and [effectiveTimeFrame] are required according to the OMH definition.
  BloodGlucose(this.bloodGlucose, TimeFrame effectiveTimeFrame,
      {this.temporalRelationshipToMeal, this.temporalRelationshipToSleep}) {
    this.effectiveTimeFrame = effectiveTimeFrame;
  }

  @override
  TimeFrame effectiveTimeFrame;

  BloodGlucoseUnitValue bloodGlucose;

  String temporalRelationshipToMeal;
  String temporalRelationshipToSleep;

  factory BloodGlucose.fromJson(Map<String, dynamic> json) =>
      _$BloodGlucoseFromJson(json);

  Map<String, dynamic> toJson() => _$BloodGlucoseToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="https://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-glucose">Blood glucose</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class BloodGlucoseUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID = new SchemaId.withVersion(
      SchemaSupport.OMH_NAMESPACE,
      "blood-glucose-unit-value",
      new SchemaVersion(1, 0));

  BloodGlucoseUnitValue(String unit, double value) : super(unit, value);

  factory BloodGlucoseUnitValue.fromJson(Map<String, dynamic> json) =>
      _$BloodGlucoseUnitValueFromJson(json);

  Map<String, dynamic> toJson() => _$BloodGlucoseUnitValueToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A unit of blood glucose.
///
/// OMH version 1.0
/// See <a href="https://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_blood-glucose">blood glucose</a>
class BloodGlucoseUnit extends Unit {
  static const String MG_OF_DL = 'mg/dL';
  static const String MMOL_OF_L = 'mmol/L';
  BloodGlucoseUnit(schemaValue) : super(schemaValue);
}
