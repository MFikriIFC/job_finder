import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    super.key,
    required this.companyProfile,
    required this.jobPosition,
    required this.companyName,
    required this.workingPeriodeType,
    required this.jobLongevity,
    required this.companyRegion,
    this.otherInfo = "",
    required this.skills,
  });

  final String companyProfile;
  final String jobPosition;
  final String companyName;
  final String workingPeriodeType;
  final String jobLongevity;
  final String companyRegion;
  final String otherInfo;
  final String skills;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          companyProfile,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobPosition,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                "$companyName • $workingPeriodeType",
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                jobLongevity,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              Text(
                companyRegion,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                height: 12,
              ),
              Visibility(
                visible: otherInfo.isNotEmpty,
                child: Text(
                  otherInfo,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Visibility(
                visible: skills.isNotEmpty,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.diamond_outlined,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        skills,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
