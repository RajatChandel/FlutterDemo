import 'package:demo/background_image.dart';
import 'package:demo/bloc/dashboard_bloc.dart';
import 'package:demo/bloc/dashboard_event.dart';
import 'package:demo/bloc/dashboard_states.dart';
import 'package:demo/floating_text.dart';
import 'package:demo/main_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardDetailsPage extends StatefulWidget {
  const DashboardDetailsPage({Key? key}) : super(key: key);

  @override
  State<DashboardDetailsPage> createState() => _DashboardDetailsPageState();
}

class _DashboardDetailsPageState extends State<DashboardDetailsPage> {
  @override
  void initState() {
    BlocProvider.of<DashboardBloc>(context).add(FetchDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardDetailsPageState>(
      bloc: BlocProvider.of<DashboardBloc>(context),
      builder: (context, state) {
        if (state is DashboardDetailsLoadingPageState) {
          return const SizedBox();
        } else if (state is DashboardDetailsSucessPageState) {
          return Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 32.0, left: 32, right: 32),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(horizontal: 46.0),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'heloo',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  const BackgroundImage(),
                  const MainBody(),
                  FloatingText(
                    dataModel: state.dataModel,
                  )
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
