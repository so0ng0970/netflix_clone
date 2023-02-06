import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/bbongflix_logo.png'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: const Text(
              'SOONGER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 140,
            height: 5,
            color: Colors.red,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'https://soonger.com',
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              child: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '프로필 수정하기',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
