// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bme280_measurement_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bme280MeasurementListRequest _$Bme280MeasurementListRequestFromJson(
    Map<String, dynamic> json) {
  return _Bme280MeasurementListRequest.fromJson(json);
}

/// @nodoc
mixin _$Bme280MeasurementListRequest {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Bme280MeasurementListRequestCopyWith<Bme280MeasurementListRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Bme280MeasurementListRequestCopyWith<$Res> {
  factory $Bme280MeasurementListRequestCopyWith(
          Bme280MeasurementListRequest value,
          $Res Function(Bme280MeasurementListRequest) then) =
      _$Bme280MeasurementListRequestCopyWithImpl<$Res,
          Bme280MeasurementListRequest>;
  @useResult
  $Res call({int page, int perPage, DateTime from, DateTime to, String sort});
}

/// @nodoc
class _$Bme280MeasurementListRequestCopyWithImpl<$Res,
        $Val extends Bme280MeasurementListRequest>
    implements $Bme280MeasurementListRequestCopyWith<$Res> {
  _$Bme280MeasurementListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? from = null,
    Object? to = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Bme280MeasurementListRequestImplCopyWith<$Res>
    implements $Bme280MeasurementListRequestCopyWith<$Res> {
  factory _$$Bme280MeasurementListRequestImplCopyWith(
          _$Bme280MeasurementListRequestImpl value,
          $Res Function(_$Bme280MeasurementListRequestImpl) then) =
      __$$Bme280MeasurementListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int perPage, DateTime from, DateTime to, String sort});
}

/// @nodoc
class __$$Bme280MeasurementListRequestImplCopyWithImpl<$Res>
    extends _$Bme280MeasurementListRequestCopyWithImpl<$Res,
        _$Bme280MeasurementListRequestImpl>
    implements _$$Bme280MeasurementListRequestImplCopyWith<$Res> {
  __$$Bme280MeasurementListRequestImplCopyWithImpl(
      _$Bme280MeasurementListRequestImpl _value,
      $Res Function(_$Bme280MeasurementListRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? from = null,
    Object? to = null,
    Object? sort = null,
  }) {
    return _then(_$Bme280MeasurementListRequestImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bme280MeasurementListRequestImpl
    implements _Bme280MeasurementListRequest {
  _$Bme280MeasurementListRequestImpl(
      {required this.page,
      required this.perPage,
      required this.from,
      required this.to,
      required this.sort});

  factory _$Bme280MeasurementListRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Bme280MeasurementListRequestImplFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final String sort;

  @override
  String toString() {
    return 'Bme280MeasurementListRequest(page: $page, perPage: $perPage, from: $from, to: $to, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bme280MeasurementListRequestImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, from, to, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Bme280MeasurementListRequestImplCopyWith<
          _$Bme280MeasurementListRequestImpl>
      get copyWith => __$$Bme280MeasurementListRequestImplCopyWithImpl<
          _$Bme280MeasurementListRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Bme280MeasurementListRequestImplToJson(
      this,
    );
  }
}

abstract class _Bme280MeasurementListRequest
    implements Bme280MeasurementListRequest {
  factory _Bme280MeasurementListRequest(
      {required final int page,
      required final int perPage,
      required final DateTime from,
      required final DateTime to,
      required final String sort}) = _$Bme280MeasurementListRequestImpl;

  factory _Bme280MeasurementListRequest.fromJson(Map<String, dynamic> json) =
      _$Bme280MeasurementListRequestImpl.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  String get sort;
  @override
  @JsonKey(ignore: true)
  _$$Bme280MeasurementListRequestImplCopyWith<
          _$Bme280MeasurementListRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
