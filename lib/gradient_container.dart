import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(
    this.colors, {
    super.key,
  });
  final List<Color> colors;
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    print('Rolling dice...');
    activeDiceImage = 'assets/images/dice-6.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(
                  //   top: 20,
                  //   bottom: 20,
                  //   left: 30,
                  //   right: 30,
                  // ),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
