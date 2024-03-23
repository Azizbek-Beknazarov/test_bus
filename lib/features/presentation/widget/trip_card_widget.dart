import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_bus/core/util/extensions.dart';
import 'package:test_bus/features/domain/entity/trip_entity.dart';

class TripCardWidget extends StatelessWidget {
  const TripCardWidget({super.key, required this.trip});

  final TripsEntity? trip;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  "https://picsum.photos/id/220/200/300",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 230,
                      minWidth: 100,
                    ),
                    child: Text(
                      trip?.driver1 ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Text(
                    trip?.bus?.model ?? "",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    trip?.carrier ?? "",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const Gap(12),
          Row(
            children: [
              const Icon(Icons.radio_button_checked, color: Colors.grey),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trip?.departure?.name ?? "",
                    style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    dateFormatValue(trip?.departureTime ?? ""),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    timeFormatValue(trip?.departureTime ?? ""),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(12),
          Row(
            children: [
              const Icon(Icons.radio_button_checked, color: Colors.grey),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trip?.destination?.name ?? "",
                    style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    dateFormatValue(trip?.arrivalTime ?? ""),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    timeFormatValue(trip?.arrivalTime ?? ""),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
