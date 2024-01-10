part of 'telescope_bloc.dart';

@freezed
class TelescopeEvent with _$TelescopeEvent {
  const factory TelescopeEvent.started() = _Started;
  const factory TelescopeEvent.getAllTelescopes() = _GetAllTelescopes;
  const factory TelescopeEvent.addTelescope(Telescope telescope) = _AddTelescope;
}
