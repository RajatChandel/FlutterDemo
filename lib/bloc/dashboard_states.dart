import 'package:demo/bloc/dashboard_bloc.dart';

abstract class DashboardDetailsPageState {}

class DashboardDetailsLoadingPageState extends DashboardDetailsPageState {}

class DashboardDetailsSucessPageState extends DashboardDetailsPageState {
  final DataModel dataModel;

  DashboardDetailsSucessPageState({required this.dataModel});
}

class DashboardDetailsErrorPageState extends DashboardDetailsPageState {}
