// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:music_player/openAudio/openaudio.dart';
// import 'package:music_player/screens/Nowplaying/NowPlaying.dart';
// import 'package:music_player/screens/playlist/addtoPly.dart';
// import 'package:music_player/screens/playlist/cusPlaylist.dart';
// import 'package:on_audio_query/on_audio_query.dart';

// class listView extends StatefulWidget {
//    String newtitile;
//    String newsub;
//   String newimage;
//   VoidCallback? back;
//   int? index;
//   listView(
//       {Key? key,
//       required this.newtitile,
//       required this.newsub,
//       required this.newimage,
      

//       this.back})
//       : super(key: key);

//   @override
//   State<listView> createState() => _listViewState();
// List<dynamic>? favorites = [];
//   List<dynamic>? likedSongs = [];

  

  

  
// }

// class _listViewState extends State<listView> {
//   Icon favIcon = Icon(
//     Icons.favorite_border,
//     color: Colors.white,
//   );


// late TextEditingController controller;


//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
     
//       title: Text(
//         widget.newtitile.toString(),
//         maxLines: 1,
//         overflow: TextOverflow.ellipsis,
//         style: GoogleFonts.poppins(
//             fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
//       ),
//       subtitle: Text(
//         widget.newsub.toString(),
//         maxLines: 1,
//         style: GoogleFonts.poppins(
//             fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white),
//       ),
//       leading: SizedBox(
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(50),

//           child: QueryArtworkWidget(
            
//             nullArtworkWidget: Image.asset("assets/logo.jpg",
//             width: 50,
//             height: 50,
//             fit: BoxFit.cover,),
//             id: int.parse(widget.newimage), type: ArtworkType.AUDIO),



//           // child: Image.asset(
//           //   '${widget.newimage}',
//           //   width: 50,
//           //   height: 50,
//           //   fit: BoxFit.cover,
//           // ),
//         ),
//       ),
//       trailing: Wrap(
//         spacing: 5,
//         children: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 if (favIcon.icon == Icons.favorite_border) {
//                   favIcon = Icon(
//                     Icons.favorite,
//                     color: Colors.red,
//                   );
//                   const text = 'Added to the Favourites';
//                         final Snackbar = SnackBar(
//                           duration: Duration(seconds: 1),
//                           content: Text(
//                             text,
//                             style: GoogleFonts.poppins(
//                                 fontSize: 15, fontWeight: FontWeight.bold),
//                           ),
//                           backgroundColor: const Color.fromARGB(255, 156, 10, 0),
//                           behavior: SnackBarBehavior.floating,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(24)),
//                         );
//                         ScaffoldMessenger.of(context).showSnackBar(Snackbar);
//                 } else {
//                   favIcon = Icon(Icons.favorite_border);
//                    const text = 'Removed from the Favourites';
//                         final Snackbar = SnackBar(
//                           duration: Duration(seconds: 1),
//                             content: Text(
//                               text,
//                               style: GoogleFonts.poppins(
//                                   fontSize: 15, fontWeight: FontWeight.bold),
//                             ),
//                             backgroundColor: Color.fromARGB(255, 88, 88, 88),
//                             behavior: SnackBarBehavior.floating,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(24)));
//                         ScaffoldMessenger.of(context).showSnackBar(Snackbar);
//                 }
//               });
//             },
//             icon: favIcon,
//             color: Colors.white,
//           ),
//           IconButton(
//             onPressed: () {
//               addplay(context);
//             },
//             icon: const Icon(
//               Icons.playlist_add,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void addplay(BuildContext context) {
  
  
//   showDialog(
//       context: context,
//       builder: (ctx) {
//         return Dialog(
//          backgroundColor: Colors.black,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40),
//               gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
             
//               Color.fromARGB(255, 44, 43, 44),
//                Color.fromARGB(255, 114, 37, 32),
//             ])),
//             width: 300,
//             height: 600,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   Text('Add to ',style: GoogleFonts.poppins(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500),),
//                   SizedBox(height: 10,),
//                   IconButton(onPressed: (){

//                     showDialog(
//                       context: context,
//                       builder: (ctx) {
//                         return Dialog(
//                           backgroundColor: Color.fromARGB(255, 102, 97, 97),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(40),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(40.0),
//                             child: Container(
//                               width: 300,
//                               height: 135,
//                               child: Column(
//                                 children: [
//                                   TextField(
//                                     controller: controller,
//                                       style:
//                                           const TextStyle(color: Colors.white),
//                                       decoration: InputDecoration(
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                             borderSide: const BorderSide(
//                                                 color: Colors.white)),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderSide: const BorderSide(
//                                                 color: Colors.white, width: 2),
//                                             borderRadius:
//                                                 BorderRadius.circular(30)),
//                                         hintStyle: const TextStyle(
//                                             color: Color.fromARGB(
//                                                 255, 202, 202, 202)),
//                                         hintText: 'Create a Playlist',
//                                         focusedBorder: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(30),
//                                           borderSide: const BorderSide(
//                                             color: Color.fromARGB(
//                                                 255, 155, 122, 122),
//                                             width: 2.0,
//                                           ),
//                                         ),
//                                       )),
//                                   const SizedBox(
//                                     height: 30,
//                                   ),
//                                   Padding(
//                                     padding:
//                                         const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         SizedBox(
//                                           width: 80,
//                                           child: ElevatedButton(
//                                               style: ElevatedButton.styleFrom(
//                                                   primary: Colors.white,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               20))),
//                                               onPressed: () {
//                                                 // submit();
//                                               },
//                                               child: const Text(
//                                                 'Create',
//                                                 style: TextStyle(
//                                                     color: Colors.black),
//                                               )),
//                                         ),
//                                         SizedBox(
//                                           width: 80,
//                                           child: ElevatedButton(
//                                               style: ElevatedButton.styleFrom(
//                                                   primary: Colors.white,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               20))),
//                                               onPressed: () {
//                                                 Navigator.pop(context);
//                                               },
//                                               child: const Text(
//                                                 'Cancel',
//                                                 style: TextStyle(
//                                                     color: Colors.black),
//                                               )),
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       });




//                   }, icon: Icon(Icons.add_circle,color: Colors.white,)),
//                   SizedBox(height: 26,),
//                   AddToPlay(aatitle: 'Melody'),
//                   SizedBox(height: 20,),
//                   AddToPlay(aatitle: 'Sad'),
//                   SizedBox(height: 20,),
//                 ],
//               ),
//             ),
//           ),
//         );
//       });
  
// }
// }







