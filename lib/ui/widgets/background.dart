// import 'package:flutter/material.dart';

// import 'package:adobe_xd/adobe_xd.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class BackGround extends StatelessWidget {
//   final double? height;

//   const BackGround({Key? key, @required this.height}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var myDeviceWidth = MediaQuery.of(context).size.width;
//     return
//         // Adobe XD layer: 'Background' (group)
//         RotatedBox(
//       quarterTurns: 2,
//       child: SizedBox(
//         width: myDeviceWidth,
//         height: height,
//         child: Stack(
//           children: <Widget>[
//             Pinned.fromSize(
//               bounds: const Rect.fromLTWH(86.6, 0.0, 436.3, 467.4),
//               size: Size(myDeviceWidth, 290.82),
//               pinRight: true,
//               pinTop: true,
//               pinBottom: true,
//               fixedWidth: true,
//               child: SvgPicture.string(
//                 '<svg viewBox="11.0 409.8 436.3 467.4" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff6c18a4"  /><stop offset="1.0" stop-color="#ff3827b4"  /></linearGradient></defs><path transform="translate(-222.02, 35.0)" d="M 669.3630981445313 459.145263671875 C 669.3630981445313 459.145263671875 548.8350219726563 400.6980895996094 416.8695983886719 423.4821166992188 C 284.9042358398438 446.2661743164063 233.0645141601563 374.7544555664063 233.0645141601563 374.7544555664063 L 233.0645141601563 842.1944580078125 L 669.3630981445313 842.1944580078125 L 669.3630981445313 459.145263671875 Z" fill="url(#gradient)" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                 allowDrawingOutsideViewBox: true,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Pinned.fromSize(
//               bounds: const Rect.fromLTWH(86.6, 35.8, 438.6, 431.6),
//               size: Size(myDeviceWidth, 290.82),
//               pinRight: true,
//               pinTop: true,
//               pinBottom: true,
//               fixedWidth: true,
//               child: SvgPicture.string(
//                 '<svg viewBox="11.0 445.6 438.6 431.6" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff6c18a4"  /><stop offset="1.0" stop-color="#ff3827b4"  /></linearGradient></defs><path transform="translate(-222.02, 59.96)" d="M 671.6842041015625 387.7655029296875 C 671.6842041015625 387.7655029296875 599.6458740234375 372.8626098632813 486.5037231445313 421.7363891601563 C 373.361572265625 470.6101684570313 233.0645294189453 396.2200927734375 233.0645294189453 396.2200927734375 L 233.0645294189453 817.2373657226563 L 669.3630981445313 817.2373657226563 L 671.6842041015625 387.7655029296875 Z" fill="url(#gradient)" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                 allowDrawingOutsideViewBox: true,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Pinned.fromSize(
//               bounds: const Rect.fromLTWH(0.0, 32.5, 525.2, 435.5),
//               size: Size(myDeviceWidth, 290.82),
//               pinLeft: true,
//               pinRight: true,
//               pinTop: true,
//               pinBottom: true,
//               child: SvgPicture.string(
//                 '<svg viewBox="-75.5 442.3 525.2 435.5" ><defs><linearGradient id="gradient" x1="1.0" y1="0.42289" x2="0.17625" y2="0.423406"><stop offset="0.0" stop-color="#ff3827b4"  /><stop offset="1.0" stop-color="#ff6c18a4"  /></linearGradient></defs><path transform="translate(-234.0, 61.5)" d="M 158.4649963378906 408.209716796875 C 158.4649963378906 408.209716796875 234.9894561767578 354.0303344726563 388.8451232910156 397.9878540039063 C 542.700927734375 441.9453125 683.626953125 426.3045654296875 683.626953125 426.3045654296875 L 682.4663696289063 816.3185424804688 L 246.1284637451172 816.3185424804688 L 158.4649963378906 408.209716796875 Z" fill="url(#gradient)" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                 allowDrawingOutsideViewBox: true,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Pinned.fromSize(
//               bounds: const Rect.fromLTWH(86.5, 28.7, 438.7, 439.4),
//               size: Size(myDeviceWidth, 290.82),
//               pinRight: true,
//               pinTop: true,
//               pinBottom: true,
//               fixedWidth: true,
//               child: SvgPicture.string(
//                 '<svg viewBox="11.0 438.4 438.7 439.4" ><defs><linearGradient id="gradient" x1="1.0" y1="0.38133" x2="0.0" y2="0.381199"><stop offset="0.0" stop-color="#ff3827b4"  /><stop offset="1.0" stop-color="#ff6c18a4"  /></linearGradient></defs><path transform="translate(-202.03, 30.36)" d="M 214.1575775146484 432.1874389648438 C 214.1575775146484 432.1874389648438 281.7687072753906 382.1484069824219 435.2287292480469 426.1766357421875 C 588.6893310546875 470.204833984375 651.6945190429688 468.3905029296875 651.6945190429688 468.3905029296875 L 650.5369262695313 847.4635620117188 L 213 847.4635620117188 L 214.1575775146484 432.1874389648438 Z" fill="url(#gradient)" fill-opacity="0.7" stroke="none" stroke-width="1" stroke-opacity="0.7" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                 allowDrawingOutsideViewBox: true,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
