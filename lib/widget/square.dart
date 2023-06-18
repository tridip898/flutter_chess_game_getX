import 'package:chess_game/helper/piece.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece chessPiece;
  const Square({Key? key, required this.isWhite, required this.chessPiece}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isWhite? Colors.grey.shade200:Colors.grey.shade500,
      child: chessPiece != null?Image.asset(chessPiece.imagePath,color: chessPiece.isWhite?Colors.white:Colors.black,):null,
    );
  }
}
