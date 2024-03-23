import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bus/features/presentation/bloc/trip_bloc.dart';
import 'package:test_bus/features/presentation/components/un_focus_widget.dart';
import 'package:test_bus/features/presentation/widget/app_bar_widget.dart';
import 'package:test_bus/features/presentation/widget/input_forms_widget.dart';
import 'package:test_bus/features/presentation/widget/trip_list_widget.dart';

class TripHomePage extends StatefulWidget {
  const TripHomePage({super.key});

  @override
  TripHomePageState createState() => TripHomePageState();
}

class TripHomePageState extends State<TripHomePage> {
  late TextEditingController controllerDeparture;
  late TextEditingController controllerDestination;
  late TextEditingController controllerDate;

  @override
  void initState() {
    super.initState();
    controllerDeparture = TextEditingController();
    controllerDestination = TextEditingController();
    controllerDate = TextEditingController();
  }

  @override
  void dispose() {
    controllerDeparture.dispose();
    controllerDestination.dispose();
    controllerDate.dispose();
    super.dispose();
  }

  Future<void> refresh() {
    return Future(() => BlocProvider.of<TripBloc>(context).add(SearchTripEvent(
          departureCity: controllerDeparture.text.trim(),
          destinationCity: controllerDestination.text.trim(),
          date: controllerDate.text.trim(),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return OnUnFocusTap(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBarWidget(
          onPressed: () {
            controllerDate.clear();
            controllerDeparture.clear();
            controllerDestination.clear();
          },
        ),
        body: RefreshIndicator(
          onRefresh: () {
            return refresh();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                InputFormsWidget(
                  controllerDeparture: controllerDeparture,
                  controllerDestination: controllerDestination,
                  controllerDate: controllerDate,
                ),
                TripListWidget(
                  onPressed: () {
                    BlocProvider.of<TripBloc>(context).add(SearchTripEvent(
                      departureCity: controllerDeparture.text.trim(),
                      destinationCity: controllerDestination.text.trim(),
                      date: controllerDate.text.trim(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
