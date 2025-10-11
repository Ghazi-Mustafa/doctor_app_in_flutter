// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( Loading<T> value)?  loading,TResult Function( Success<T> value)?  success,TResult Function( Failure<T> value)?  failure,TResult Function( Validate<T> value)?  passwordValidate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case Validate() when passwordValidate != null:
return passwordValidate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( Loading<T> value)  loading,required TResult Function( Success<T> value)  success,required TResult Function( Failure<T> value)  failure,required TResult Function( Validate<T> value)  passwordValidate,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Failure():
return failure(_that);case Validate():
return passwordValidate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  loading,TResult? Function( Success<T> value)?  success,TResult? Function( Failure<T> value)?  failure,TResult? Function( Validate<T> value)?  passwordValidate,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case Validate() when passwordValidate != null:
return passwordValidate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( String error)?  failure,TResult Function( bool hasLowerCase,  bool hasUpperCase,  bool hasMinLength,  bool hasNumber,  bool hasSpecialCharacters)?  passwordValidate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.data);case Failure() when failure != null:
return failure(_that.error);case Validate() when passwordValidate != null:
return passwordValidate(_that.hasLowerCase,_that.hasUpperCase,_that.hasMinLength,_that.hasNumber,_that.hasSpecialCharacters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( String error)  failure,required TResult Function( bool hasLowerCase,  bool hasUpperCase,  bool hasMinLength,  bool hasNumber,  bool hasSpecialCharacters)  passwordValidate,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.data);case Failure():
return failure(_that.error);case Validate():
return passwordValidate(_that.hasLowerCase,_that.hasUpperCase,_that.hasMinLength,_that.hasNumber,_that.hasSpecialCharacters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( String error)?  failure,TResult? Function( bool hasLowerCase,  bool hasUpperCase,  bool hasMinLength,  bool hasNumber,  bool hasSpecialCharacters)?  passwordValidate,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.data);case Failure() when failure != null:
return failure(_that.error);case Validate() when passwordValidate != null:
return passwordValidate(_that.hasLowerCase,_that.hasUpperCase,_that.hasMinLength,_that.hasNumber,_that.hasSpecialCharacters);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignUpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> implements SignUpState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.loading()';
}


}




/// @nodoc


class Success<T> implements SignUpState<T> {
  const Success(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Success<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Failure<T> implements SignUpState<T> {
  const Failure(this.error);
  

 final  String error;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignUpState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Failure<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Validate<T> implements SignUpState<T> {
  const Validate(this.hasLowerCase, this.hasUpperCase, this.hasMinLength, this.hasNumber, this.hasSpecialCharacters);
  

 final  bool hasLowerCase;
 final  bool hasUpperCase;
 final  bool hasMinLength;
 final  bool hasNumber;
 final  bool hasSpecialCharacters;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateCopyWith<T, Validate<T>> get copyWith => _$ValidateCopyWithImpl<T, Validate<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Validate<T>&&(identical(other.hasLowerCase, hasLowerCase) || other.hasLowerCase == hasLowerCase)&&(identical(other.hasUpperCase, hasUpperCase) || other.hasUpperCase == hasUpperCase)&&(identical(other.hasMinLength, hasMinLength) || other.hasMinLength == hasMinLength)&&(identical(other.hasNumber, hasNumber) || other.hasNumber == hasNumber)&&(identical(other.hasSpecialCharacters, hasSpecialCharacters) || other.hasSpecialCharacters == hasSpecialCharacters));
}


@override
int get hashCode => Object.hash(runtimeType,hasLowerCase,hasUpperCase,hasMinLength,hasNumber,hasSpecialCharacters);

@override
String toString() {
  return 'SignUpState<$T>.passwordValidate(hasLowerCase: $hasLowerCase, hasUpperCase: $hasUpperCase, hasMinLength: $hasMinLength, hasNumber: $hasNumber, hasSpecialCharacters: $hasSpecialCharacters)';
}


}

/// @nodoc
abstract mixin class $ValidateCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $ValidateCopyWith(Validate<T> value, $Res Function(Validate<T>) _then) = _$ValidateCopyWithImpl;
@useResult
$Res call({
 bool hasLowerCase, bool hasUpperCase, bool hasMinLength, bool hasNumber, bool hasSpecialCharacters
});




}
/// @nodoc
class _$ValidateCopyWithImpl<T,$Res>
    implements $ValidateCopyWith<T, $Res> {
  _$ValidateCopyWithImpl(this._self, this._then);

  final Validate<T> _self;
  final $Res Function(Validate<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasLowerCase = null,Object? hasUpperCase = null,Object? hasMinLength = null,Object? hasNumber = null,Object? hasSpecialCharacters = null,}) {
  return _then(Validate<T>(
null == hasLowerCase ? _self.hasLowerCase : hasLowerCase // ignore: cast_nullable_to_non_nullable
as bool,null == hasUpperCase ? _self.hasUpperCase : hasUpperCase // ignore: cast_nullable_to_non_nullable
as bool,null == hasMinLength ? _self.hasMinLength : hasMinLength // ignore: cast_nullable_to_non_nullable
as bool,null == hasNumber ? _self.hasNumber : hasNumber // ignore: cast_nullable_to_non_nullable
as bool,null == hasSpecialCharacters ? _self.hasSpecialCharacters : hasSpecialCharacters // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
