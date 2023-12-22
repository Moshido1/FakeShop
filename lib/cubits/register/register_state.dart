part of 'register_cubit.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSucces extends RegisterState {}

final class RegisterError extends RegisterState {}

final class RegisterNetwork extends RegisterState {}
