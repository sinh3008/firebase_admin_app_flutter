part of 'telescope_bloc.dart';

@freezed
class TelescopeState with _$TelescopeState {
  const factory TelescopeState.initial() = _Initial;
  const factory TelescopeState.loading() = _Loading;


  const factory TelescopeState.loadingAllTelescopes(List<Telescope> list) = _LoadingAllTelescopes;
  const factory TelescopeState.addTelescopeSuccess() = _AddTelescopeSuccess;

  const factory TelescopeState.error() = _Error;

}
