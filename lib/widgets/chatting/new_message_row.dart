import 'package:flutter/material.dart';

class NewMessageRow extends StatelessWidget {
  const NewMessageRow({
    super.key,
    required this.userImg,
    required this.userName,
    required this.userDesc,
    required this.onTap,
  });

  final String userImg;
  final String userName;
  final String userDesc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipOval(
                child: Image.network(
                  userImg,
                  fit: BoxFit.cover,
                  width: 52,
                  height: 52,
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(55, 219, 137, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        userDesc,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 32,
                  color: Theme.of(context).colorScheme.outline,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}