// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:music_player/screens/albums/customalbum.dart';
// import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

// class Album extends StatelessWidget {
//   const Album({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     var mediaquery1 = MediaQuery.of(context);
//     return ScaffoldGradientBackground(
//       gradient: const LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color.fromARGB(255, 16, 53, 83),
//             Color.fromARGB(255, 75, 71, 37),
//             Color.fromARGB(255, 61, 29, 26)
//           ]),
//       body: SafeArea(
//         child: Column(
//           children: [
//          const   SizedBox(
//               height: 90,
//             ),
//             Center(
//               child: Text(
//                 'A l b u m s',
//                 style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//            const SizedBox(
//               height: 15,
//             ),
//             Expanded(
//               child: Container(
//                 width: width * 1,
//                 decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(50),
//                         topLeft: Radius.circular(50)),
//                     gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Color.fromARGB(255, 85, 43, 53),
//                           Color.fromARGB(255, 70, 66, 38),
//                           Color.fromARGB(255, 8, 75, 75)
//                         ])),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     custAlbum(aatitle: 'Folder'),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     custAlbum(aatitle: 'My music'),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     custAlbum(aatitle: 'Personal'),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     custAlbum(aatitle: 'Whatsapp Audio'),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
