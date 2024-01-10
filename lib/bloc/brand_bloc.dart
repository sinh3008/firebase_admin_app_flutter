import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../db/db_helper.dart';
import '../models/brand.dart';

part 'brand_event.dart';

part 'brand_state.dart';

part 'brand_bloc.freezed.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  List<Brand> brandList = [];

  BrandBloc() : super(const BrandState.initial()) {
    on<_GetAllBrand>(_onGetAllBrand);
  }

  FutureOr<void> _onGetAllBrand(
      _GetAllBrand event, Emitter<BrandState> emit) async {
    emit(const BrandState.loading());
    try {
      DbHelper.getAllBrands().listen((snapshot) {
        brandList = List.generate(snapshot.docs.length,
            (index) => Brand.fromJson(snapshot.docs[index].data()));
      });
      emit(BrandState.loaded(brandList));
    } catch (e) {
      print(e);
    }
  }
}
