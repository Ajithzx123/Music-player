// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:music_player/screens/albums/insideAlbum.dart';

// class custAlbum extends StatelessWidget {
//   final String aatitle;
//   VoidCallback? tap;
//   custAlbum({Key? key, required this.aatitle, this.tap}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () => Navigator.push(
//               context, MaterialPageRoute(builder: (context) => const InsideAlbum())),
//           child: Container(
//             height: 90,
//             width: 350,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.grey.withOpacity(0.5),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 60,
//                     width: 60,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.black.withOpacity(0.3)),
//                     child: Icon(
//                       Icons.folder,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     aatitle,
//                     style: GoogleFonts.poppins(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
