import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: const Offset(27.9, 0.0),
          child: const Text(
            'Kakraba',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, 0.3),
          child: SvgPicture.string(
            '<svg viewBox="0.0 0.0 18.9 19.1" ><path transform="translate(0.03, -0.1)" d="M 18.8639087677002 6.470085620880127 C 16.23390007019043 3.259425163269043 12.0497989654541 0.1170779839158058 12.0668773651123 0.1000000089406967 C 10.23953342437744 1.449160099029541 8.292645454406738 3.225269079208374 6.328677177429199 5.291704177856445 C 1.102817893028259 10.84204578399658 -1.305176377296448 16.6314811706543 0.6417127251625061 18.5612907409668 C 2.605679988861084 20.5081787109375 8.446348190307617 17.98063850402832 14.01376724243164 12.58399772644043 C 15.80695247650146 10.85912322998047 18.98345756530762 6.623786926269531 18.8639087677002 6.470085620880127 Z" fill="#ffffff" fill-opacity="0.85" stroke="none" stroke-width="1" stroke-opacity="0.85" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: const Offset(5.3, 0.2),
          child: SvgPicture.string(
            '<svg viewBox="0.0 0.0 18.9 19.1" ><path transform="translate(-30.98, 0.0)" d="M 43.49744033813477 5.191704273223877 C 41.5505485534668 3.125268936157227 39.58658599853516 1.349160075187683 37.77631759643555 0 C 37.77631759643555 0.0170779749751091 33.59221267700195 3.159425497055054 30.97928619384766 6.370084285736084 C 30.84265899658203 6.523786544799805 34.01916122436523 10.75912475585938 35.81235122680664 12.50107574462891 C 41.36269378662109 17.89771842956543 47.20336151123047 20.42525672912598 49.16732788085938 18.47837066650391 C 51.13129043579102 16.54855918884277 48.70621871948242 10.75912475585938 43.49744033813477 5.191704273223877 Z" fill="#ffffff" fill-opacity="0.85" stroke="none" stroke-width="1" stroke-opacity="0.85" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ],
    );
  }
}
