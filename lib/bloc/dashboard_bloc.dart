import 'dart:async';

import 'package:demo/bloc/dashboard_event.dart';
import 'package:demo/bloc/dashboard_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Bloc<DashboardEvents, DashboardDetailsPageState> {
  DashboardBloc() : super(DashboardDetailsLoadingPageState()) {
    on<FetchDetails>(_onFetchDetails);
  }

  FutureOr<void> _onFetchDetails(
      FetchDetails event, Emitter<DashboardDetailsPageState> emit) async {
    emit(DashboardDetailsLoadingPageState());

    try {
      await Future.delayed(const Duration(seconds: 2), () {});
      final DataModel data = DataModel(
          'Rajat',
          "02/02/1996",
          "1 year",
          " ajhdfg ajdhfga asdujkfga",
          " lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol lol ",
          [
            DetailsItem("titile", "desc"),
            DetailsItem("titile", "desc"),
            DetailsItem("titile", "desc")
          ]);
      emit(DashboardDetailsSucessPageState(dataModel: data));
    } catch (e) {
      emit(DashboardDetailsErrorPageState());
    }
  }
}

class DataModel {
  final String name;
  final String validTill;
  final String validFor;
  final String heading;
  final String desc;
  final List<DetailsItem> detailsItems;

  DataModel(this.name, this.validTill, this.validFor, this.heading, this.desc,
      this.detailsItems);
}

class DetailsItem {
  final String titile;
  final String desc;

  DetailsItem(this.titile, this.desc);
}
