// import 'package:adobe_xd/adobe_xd.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class Menu extends StatelessWidget {
//   final Function? onTap;

//   const Menu({Key? key, this.onTap}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         onTap!();
//       },
//       child: SizedBox(
//         width: 20.0,
//         height: 14.0,
//         child: Stack(
//           children: <Widget>[
//             Pinned.fromSize(
//               bounds: const Rect.fromLTWH(0.0, 0.0, 19.5, 13.5),
//               size: const Size(19.5, 13.5),
//               pinLeft: true,
//               pinRight: true,
//               pinTop: true,
//               pinBottom: true,
//               child: Stack(
//                 children: <Widget>[
//                   Pinned.fromSize(
//                     bounds: const Rect.fromLTWH(3.8, 6.0, 15.7, 1.6),
//                     size: const Size(19.5, 13.5),
//                     pinRight: true,
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child: SvgPicture.string(
//                       '<svg viewBox="3.8 6.0 15.7 1.6" ><path transform="translate(-96.19, -150.82)" d="M 114.9221267700195 158.3787841796875 L 100.7893905639648 158.3787841796875 C 100.3546600341797 158.3787841796875 100.0000076293945 158.0241394042969 100.0000076293945 157.5894012451172 C 100.0000076293945 157.1546630859375 100.3546600341797 156.8000183105469 100.7893905639648 156.8000183105469 L 114.9221267700195 156.8000183105469 C 115.3568649291992 156.8000183105469 115.7115173339844 157.1546630859375 115.7115173339844 157.5894012451172 C 115.7115173339844 158.0279541015625 115.3568649291992 158.3787841796875 114.9221267700195 158.3787841796875 Z" fill="#ffffff" fill-opacity="0.9" stroke="none" stroke-width="1" stroke-opacity="0.9" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: const Rect.fromLTWH(0.0, 0.0, 19.5, 1.6),
//                     size: const Size(19.5, 13.5),
//                     pinLeft: true,
//                     pinRight: true,
//                     pinTop: true,
//                     fixedHeight: true,
//                     child: SvgPicture.string(
//                       '<svg viewBox="0.0 0.0 19.5 1.6" ><path  d="M 18.735595703125 1.578778147697449 L 0.7893890738487244 1.578778147697449 C 0.3546530604362488 1.578778147697449 0 1.224125027656555 0 0.7893890738487244 C 0 0.3546531796455383 0.3546530604362488 0 0.7893890738487244 0 L 18.735595703125 0 C 19.17033195495605 0 19.52498626708984 0.3546530604362488 19.52498626708984 0.7893890738487244 C 19.52498626708984 1.224125146865845 19.17033195495605 1.578778147697449 18.735595703125 1.578778147697449 Z" fill="#ffffff" fill-opacity="0.9" stroke="none" stroke-width="1" stroke-opacity="0.9" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Pinned.fromSize(
//                     bounds: const Rect.fromLTWH(8.0, 12.0, 11.5, 1.6),
//                     size: const Size(19.5, 13.5),
//                     pinRight: true,
//                     pinBottom: true,
//                     fixedWidth: true,
//                     fixedHeight: true,
//                     child: SvgPicture.string(
//                       '<svg viewBox="8.0 12.0 11.5 1.6" ><path transform="translate(-201.99, -301.74)" d="M 220.7273101806641 315.2787475585938 L 210.7893981933594 315.2787475585938 C 210.3546600341797 315.2787475585938 210 314.9241027832031 210 314.4893493652344 C 210 314.0546264648438 210.3546600341797 313.6999816894531 210.7893981933594 313.6999816894531 L 220.7273101806641 313.6999816894531 C 221.1620483398438 313.6999816894531 221.5166931152344 314.0546264648438 221.5166931152344 314.4893493652344 C 221.5166931152344 314.9241027832031 221.1620483398438 315.2787475585938 220.7273101806641 315.2787475585938 Z" fill="#ffffff" fill-opacity="0.9" stroke="none" stroke-width="1" stroke-opacity="0.9" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                       allowDrawingOutsideViewBox: true,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
