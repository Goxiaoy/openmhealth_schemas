// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_glucose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BloodGlucose _$BloodGlucoseFromJson(Map<String, dynamic> json) {
  return BloodGlucose(
    json['blood_glucose'] == null
        ? null
        : BloodGlucoseUnitValue.fromJson(
            json['blood_glucose'] as Map<String, dynamic>),
    json['effective_time_frame'] == null
        ? null
        : TimeFrame.fromJson(
            json['effective_time_frame'] as Map<String, dynamic>),
    temporalRelationshipToMeal: json['temporal_relationship_to_meal'] as String,
    temporalRelationshipToSleep:
        json['temporal_relationship_to_sleep'] as String,
  )
    ..descriptiveStatistic = json['descriptive_statistic'] as String
    ..userNotes = json['user_notes'] as String;
}

Map<String, dynamic> _$BloodGlucoseToJson(BloodGlucose instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('descriptive_statistic', instance.descriptiveStatistic);
  writeNotNull('user_notes', instance.userNotes);
  writeNotNull('effective_time_frame', instance.effectiveTimeFrame);
  writeNotNull('blood_glucose', instance.bloodGlucose);
  writeNotNull(
      'temporal_relationship_to_meal', instance.temporalRelationshipToMeal);
  writeNotNull(
      'temporal_relationship_to_sleep', instance.temporalRelationshipToSleep);
  return val;
}

BloodGlucoseUnitValue _$BloodGlucoseUnitValueFromJson(
    Map<String, dynamic> json) {
  return BloodGlucoseUnitValue(
    json['unit'] as String,
    (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$BloodGlucoseUnitValueToJson(
    BloodGlucoseUnitValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('unit', instance.unit);
  return val;
}
