// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:music_player/screens/favourites/customfav.dart';
// import 'package:music_player/screens/home%20screens/custom.dart';
// import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

// class InsideAlbum extends StatelessWidget {
//   const InsideAlbum({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     var mediaquery1 = MediaQuery.of(context);
//     return ScaffoldGradientBackground(
//       gradient: const LinearGradient(
//           begin: Alignment.center,
//           end: Alignment.topRight,
//           colors: [
//             Color.fromARGB(255, 48, 133, 118),
//             Color.fromARGB(255, 20, 68, 77)
//           ]),
//       body: SafeArea(
//           child: Column(
//         children: [
//           const SizedBox(
//             height: 70,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'M y  M u s i c ',
//                 style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Expanded(
//             child: Container(
//               decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50),
//                   ),
//                   gradient: LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       colors: [
//                         Color.fromARGB(255, 21, 25, 39),
//                         Color.fromARGB(255, 85, 13, 69)
//                       ])),
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'Hope',
//                         newsub: 'XXXTENTACION',
//                         newimage: 'assets/xxxtentacion-main2.jpg'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'Beggin',
//                         newsub: 'Maneskin',
//                         newimage:
//                             'assets/muneeb-syed-4_M8uIfPEZw-unsplash.jpg'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'Changes',
//                         newsub: 'XXXTENTACION',
//                         newimage: 'assets/xxxtentacion-main2.jpg'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'Let Me Down Slowly',
//                         newsub: 'fenekot',
//                         newimage: 'assets/nolie.jpg'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'Can We Kiss Forever',
//                         newsub: 'Kina',
//                         newimage: 'assets/into.jpg'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'I know you so well',
//                         newsub: 'Creamy',
//                         newimage:
//                             'assets/muneeb-syed-4_M8uIfPEZw-unsplash.jpg'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     listView(
//                         newtitile: 'Dancin',
//                         newsub: 'luvli',
//                         newimage: 'assets/onboard.jpg'),
//                     const SizedBox(
//                       height: 60,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
