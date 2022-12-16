part of 'app_cubit.dart';

abstract class AppState {}

class AppInitial extends AppState {}
class LoadingState extends AppState {}
class SuccessState extends AppState {

}
class ErrorState extends AppState {
  final String  Error;

  ErrorState(this.Error);
}
