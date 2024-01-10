import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../db/db_helper.dart';
import '../models/brand.dart';
import '../models/image_model.dart';
import '../models/telescope.dart';
import '../utils/constants.dart';

part 'telescope_event.dart';

part 'telescope_state.dart';

part 'telescope_bloc.freezed.dart';

class TelescopeBloc extends Bloc<TelescopeEvent, TelescopeState> {
  List<Telescope> telescopeList = [];

  TelescopeBloc() : super(const TelescopeState.initial()) {
    on<_GetAllTelescopes>(_onGetAllTelescopes);
    on<_AddTelescope>(_onAddTelescopes);
  }

  FutureOr<void> _onGetAllTelescopes(
      _GetAllTelescopes event, Emitter<TelescopeState> emit) async {
    emit(const TelescopeState.loading());
    try {
      DbHelper.getAllTelescopes().listen((snapshot) {
        telescopeList = List.generate(snapshot.docs.length,
            (index) => Telescope.fromJson(snapshot.docs[index].data()));
      });
      emit(TelescopeState.loadingAllTelescopes(telescopeList));
    } catch (e) {
      emit(const TelescopeState.error());
    }
  }

  FutureOr<void> _onAddTelescopes(
      _AddTelescope event, Emitter<TelescopeState> emit) {
    emit(const TelescopeState.loading());
    try {
      Future<ImageModel> uploadImage(String imageLocalPath) async {
        final String imageName =
            'image_${DateTime.now().millisecondsSinceEpoch}';

        final photoRef = FirebaseStorage.instance
            .ref()
            .child('$telescopeImageDirectory$imageName');

        final uploadTask = photoRef.putFile(File(imageLocalPath));
        final snapshot = await uploadTask.whenComplete(() => null);
        final url = await snapshot.ref.getDownloadURL();
        return ImageModel(
          imageName: imageName,
          directoryName: telescopeImageDirectory,
          downloadUrl: url,
        );
      }

      DbHelper.addTelescope(event.telescope);
      emit(const TelescopeState.addTelescopeSuccess());
    } catch (e) {
      emit(const TelescopeState.error());
    }
  }
}
