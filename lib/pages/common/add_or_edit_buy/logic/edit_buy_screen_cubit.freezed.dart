// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_buy_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditBuyScreenCubitState {
  int? get id;
  AccountItem? get scoreItem;
  CategoryItem? get categoryItem;
  double? get amount;
  DateTime get date;
  String? get comment;

  /// Create a copy of EditBuyScreenCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditBuyScreenCubitStateCopyWith<EditBuyScreenCubitState> get copyWith =>
      _$EditBuyScreenCubitStateCopyWithImpl<EditBuyScreenCubitState>(
          this as EditBuyScreenCubitState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditBuyScreenCubitState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scoreItem, scoreItem) ||
                other.scoreItem == scoreItem) &&
            (identical(other.categoryItem, categoryItem) ||
                other.categoryItem == categoryItem) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, scoreItem, categoryItem, amount, date, comment);

  @override
  String toString() {
    return 'EditBuyScreenCubitState(id: $id, scoreItem: $scoreItem, categoryItem: $categoryItem, amount: $amount, date: $date, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class $EditBuyScreenCubitStateCopyWith<$Res> {
  factory $EditBuyScreenCubitStateCopyWith(EditBuyScreenCubitState value,
          $Res Function(EditBuyScreenCubitState) _then) =
      _$EditBuyScreenCubitStateCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      AccountItem? scoreItem,
      CategoryItem? categoryItem,
      double? amount,
      DateTime date,
      String? comment});
}

/// @nodoc
class _$EditBuyScreenCubitStateCopyWithImpl<$Res>
    implements $EditBuyScreenCubitStateCopyWith<$Res> {
  _$EditBuyScreenCubitStateCopyWithImpl(this._self, this._then);

  final EditBuyScreenCubitState _self;
  final $Res Function(EditBuyScreenCubitState) _then;

  /// Create a copy of EditBuyScreenCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scoreItem = freezed,
    Object? categoryItem = freezed,
    Object? amount = freezed,
    Object? date = null,
    Object? comment = freezed,
  }) {
    return _then(EditBuyScreenCubitState(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scoreItem: freezed == scoreItem
          ? _self.scoreItem
          : scoreItem // ignore: cast_nullable_to_non_nullable
              as AccountItem?,
      categoryItem: freezed == categoryItem
          ? _self.categoryItem
          : categoryItem // ignore: cast_nullable_to_non_nullable
              as CategoryItem?,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EditBuyScreenCubitState].
extension EditBuyScreenCubitStatePatterns on EditBuyScreenCubitState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        return null;
    }
  }
}

// dart format on
