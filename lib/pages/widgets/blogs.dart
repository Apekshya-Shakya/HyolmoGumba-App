// import 'package:flutter/material.dart';
// import 'package:hyolmo/constants/constant.dart';

// class Events extends StatelessWidget {
//   const Events({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         width: 180,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               'assets/images/gumba.jpeg',
//               // height: 150,
//               // width: 150,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Text(
//               "Title",
//               style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.black,
//                   fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(
//               height: 3,
//             ),
//             Text(
//               "Desc.",
//               style: AppStyles.subtext,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/core/resources/media.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.5,
        // height: 250,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
              Image.asset(
                  'assets/images/gumba.jpeg',
                 
                ),
                
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Event Name",
                style: AppStyles.text,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Event Description",
                style: AppStyles.subtext,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
