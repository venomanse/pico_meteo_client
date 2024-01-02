// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bme280_measurement_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bme280MeasurementListResponse _$Bme280MeasurementListResponseFromJson(
    Map<String, dynamic> json) {
  return _Bme280MeasurementListResponse.fromJson(json);
}

/// @nodoc
mixin _$Bme280MeasurementListResponse {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  IList<Bme280Measurement> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Bme280MeasurementListResponseCopyWith<Bme280MeasurementListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Bme280MeasurementListResponseCopyWith<$Res> {
  factory $Bme280MeasurementListResponseCopyWith(
          Bme280MeasurementListResponse value,
          $Res Function(Bme280MeasurementListResponse) then) =
      _$Bme280MeasurementListResponseCopyWithImpl<$Res,
          Bme280MeasurementListResponse>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalItems,
      int totalPages,
      IList<Bme280Measurement> items});
}

/// @nodoc
class _$Bme280MeasurementListResponseCopyWithImpl<$Res,
        $Val extends Bme280MeasurementListResponse>
    implements $Bme280MeasurementListResponseCopyWith<$Res> {
  _$Bme280MeasurementListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? items = null,
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
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<Bme280Measurement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Bme280MeasurementListResponseImplCopyWith<$Res>
    implements $Bme280MeasurementListResponseCopyWith<$Res> {
  factory _$$Bme280MeasurementListResponseImplCopyWith(
          _$Bme280MeasurementListResponseImpl value,
          $Res Function(_$Bme280MeasurementListResponseImpl) then) =
      __$$Bme280MeasurementListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalItems,
      int totalPages,
      IList<Bme280Measurement> items});
}

/// @nodoc
class __$$Bme280MeasurementListResponseImplCopyWithImpl<$Res>
    extends _$Bme280MeasurementListResponseCopyWithImpl<$Res,
        _$Bme280MeasurementListResponseImpl>
    implements _$$Bme280MeasurementListResponseImplCopyWith<$Res> {
  __$$Bme280MeasurementListResponseImplCopyWithImpl(
      _$Bme280MeasurementListResponseImpl _value,
      $Res Function(_$Bme280MeasurementListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? items = null,
  }) {
    return _then(_$Bme280MeasurementListResponseImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<Bme280Measurement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bme280MeasurementListResponseImpl
    implements _Bme280MeasurementListResponse {
  _$Bme280MeasurementListResponseImpl(
      {required this.page,
      required this.perPage,
      required this.totalItems,
      required this.totalPages,
      required this.items});

  factory _$Bme280MeasurementListResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$Bme280MeasurementListResponseImplFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalItems;
  @override
  final int totalPages;
  @override
  final IList<Bme280Measurement> items;

  @override
  String toString() {
    return 'Bme280MeasurementListResponse(page: $page, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bme280MeasurementListResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalItems,
      totalPages, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Bme280MeasurementListResponseImplCopyWith<
          _$Bme280MeasurementListResponseImpl>
      get copyWith => __$$Bme280MeasurementListResponseImplCopyWithImpl<
          _$Bme280MeasurementListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Bme280MeasurementListResponseImplToJson(
      this,
    );
  }
}

abstract class _Bme280MeasurementListResponse
    implements Bme280MeasurementListResponse {
  factory _Bme280MeasurementListResponse(
          {required final int page,
          required final int perPage,
          required final int totalItems,
          required final int totalPages,
          required final IList<Bme280Measurement> items}) =
      _$Bme280MeasurementListResponseImpl;

  factory _Bme280MeasurementListResponse.fromJson(Map<String, dynamic> json) =
      _$Bme280MeasurementListResponseImpl.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalItems;
  @override
  int get totalPages;
  @override
  IList<Bme280Measurement> get items;
  @override
  @JsonKey(ignore: true)
  _$$Bme280MeasurementListResponseImplCopyWith<
          _$Bme280MeasurementListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
