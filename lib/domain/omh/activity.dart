import 'package:openmhealth_schemas/openmhealth_schemas.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

/// A single episode of physical activity.
///
/// OMH version 1.2
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_physical-activity">physical-activity</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PhysicalActivity extends Measure {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "physical-activity", new SchemaVersion(1, 2));

  String activityName;
  LengthUnitValue distance;
  String reportedActivityIntensity;
  KcalUnitValue caloriesBurned;

  /// Creates a [PhysicalActivity]. The [activityName] is required according to the OMH definition.
  PhysicalActivity(
    this.activityName, {
    this.distance,
    this.reportedActivityIntensity,
    this.caloriesBurned,
  });

  factory PhysicalActivity.fromJson(Map<String, dynamic> json) => _$PhysicalActivityFromJson(json);

  Map<String, dynamic> toJson() => _$PhysicalActivityToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// Self-reported intensity of a [PhysicalActivity].
///
/// OMH version 1.2
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_physical-activity">physical-activity</a>
class SelfReportedIntensity {
  static const String LIGHT = 'light';
  static const String MODERATE = 'moderate';
  static const String VIGOROUS = 'vigorous';
}

/// A unit of kilocalories.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class KcalUnit extends Unit {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "kcal-unit-value", new SchemaVersion(1, 0));

  static const String KILOCALORIE = 'kcal';

  KcalUnit(schemaValue) : super(schemaValue);

  factory KcalUnit.fromJson(Map<String, dynamic> json) => _$KcalUnitFromJson(json);

  Map<String, dynamic> toJson() => _$KcalUnitToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_kcal-unit-value">kcal-unit-value</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class KcalUnitValue extends UnitValue {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "kcal-unit-value", new SchemaVersion(1, 0));

  KcalUnitValue(String unit, double value) : super(unit, value);

  factory KcalUnitValue.fromJson(Map<String, dynamic> json) => _$KcalUnitValueFromJson(json);

  Map<String, dynamic> toJson() => _$KcalUnitValueToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A single step count measure.
///
/// OMH version 2.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_step-count">step-count</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class StepCount extends Measure {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "step-count", new SchemaVersion(2, 0));

  int stepCount;

  /// Creates a [StepCount]. The [stepCount] is required according to the OMH definition.
  StepCount(this.stepCount);

  factory StepCount.fromJson(Map<String, dynamic> json) => _$StepCountFromJson(json);

  Map<String, dynamic> toJson() => _$StepCountToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// The calories burned in a single episode of activity.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_calories-burned">calories-burned</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CaloriesBurned extends Measure {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "calories-burned", new SchemaVersion(1, 0));

  KcalUnitValue kcalBurned;
  String activityName;
  DescriptiveStatisticDenominator descriptiveStatisticDenominator;

  /// Creates a [CaloriesBurned]. The [kcalBurned] is required according to the OMH definition.
  CaloriesBurned(this.kcalBurned, {this.activityName});

  factory CaloriesBurned.fromJson(Map<String, dynamic> json) => _$CaloriesBurnedFromJson(json);
  Map<String, dynamic> toJson() => _$CaloriesBurnedToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}

/// A measurement of minutes of moderate-intensity activity performed.
///
/// OMH version 1.0
/// See <a href="http://www.openmhealth.org/documentation/#/schema-docs/schema-library/schemas/omh_minutes-moderate-activity">minutes-moderate-activity</a>
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class MinutesModerateActivity extends Measure {
  static SchemaId SCHEMA_ID =
      new SchemaId.withVersion(SchemaSupport.OMH_NAMESPACE, "minutes-moderate-activity", new SchemaVersion(1, 0));

  DurationUnitValue minutesModerateActivity;

  /// Creates a [MinutesModerateActivity]. The [minutesModerateActivity] is required according to the OMH definition.
  MinutesModerateActivity(this.minutesModerateActivity);

  factory MinutesModerateActivity.fromJson(Map<String, dynamic> json) => _$MinutesModerateActivityFromJson(json);

  Map<String, dynamic> toJson() => _$MinutesModerateActivityToJson(this);

  @override
  SchemaId getSchemaId() {
    return SCHEMA_ID;
  }
}