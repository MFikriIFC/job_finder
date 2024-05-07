import 'package:flutter/material.dart';

class HiringInNetwork extends StatelessWidget {
  const HiringInNetwork({
    super.key,
    required this.companyImg,
    required this.position,
    required this.companyName,
    required this.location,
    required this.workSetup,
    required this.mutualImg,
    required this.mutualAmount,
    required this.timePosted,
  });

  final String companyImg;
  final String position;
  final String companyName;
  final String location;
  final String workSetup;
  final String mutualImg;
  final int mutualAmount;
  final String timePosted;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          companyImg,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    position,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.cancel,
                    size: 16,
                  )
                ],
              ),
              Text(companyName),
              Text('$location $workSetup',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary)),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      mutualImg,
                      fit: BoxFit.cover,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('$mutualAmount mutual connection with the hiring team',
                      style: const TextStyle(fontWeight: FontWeight.w200))
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(timePosted,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('•'),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    "assets/images/minima_logo.png",
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text('Easy Apply',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,))
                ],
              ),
              Divider(
                color: Theme.of(context).colorScheme.outline,
              )
            ],
          ),
        ),
      ],
    );
  }
}
