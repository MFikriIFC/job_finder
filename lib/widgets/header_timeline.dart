import 'package:flutter/material.dart';

class HeaderTimeLine extends StatelessWidget {
  const HeaderTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D5603AQHiurAb7d24ng/profile-displayphoto-shrink_800_800/0/1680149648357?e=1718236800&v=beta&t=yuxNamHnXL0Ka-gRv1htaGTbq03YMzqsEfoCfj42Crw",
                    fit: BoxFit.cover,
                    width: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "M. Fikri",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "(He/Him)",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Anda",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "Front-End Developer || React Developer",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "6 bln",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.public,
                        size: 15,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          const Icon(Icons.keyboard_control_rounded),
        ],
      ),
    );
  }
}
