import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:test_bus/features/presentation/bloc/trip_bloc.dart';
import 'package:test_bus/features/presentation/widget/trip_card_widget.dart';

class TripListWidget extends StatelessWidget {
  const TripListWidget({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(MediaQuery.of(context).size.width, 40),
                ),
                onPressed: onPressed,
                child: const Text(
                  "Найти",
                  style: TextStyle(color: Colors.white),
                )),
            const Gap(16),
            BlocBuilder<TripBloc, TripState>(builder: (context, state) {
              if (state is TripLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TripErrorState) {
                return const Center(child: Text("An Error occurred"));
              } else if (state is TripInitialState) {
                return const Center(child: Text("No data yet"));
              } else if (state is TripLoadedState) {
                return (state.trip.trips?.length ?? 0) == 0
                    ? const Center(child: Text("Not found"))
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final trip = state.trip.trips?[index];
                          return TripCardWidget(trip: trip);
                        },
                        separatorBuilder: (context, index) => const Gap(16),
                        itemCount: state.trip.trips?.length ?? 0);
              }
              return const SizedBox();
            }),
          ],
        ),
      ),
    );
  }
}
