import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// final can change in run time
// const cant change in run time, is set in compile time

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {key}) : super(key: key);
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.white60;
  final Color color1;
  final Color color2;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget{

//   const GradientContainer(this.colors, {key}): super(key: key);
//   final List<Color> colors;
  
//   @override
//   Widget build(context){
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors:
//                 colors,
//                begin: startAlignment,
//                end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText("Hello There"),
//           ),
//         );
//   }
// }