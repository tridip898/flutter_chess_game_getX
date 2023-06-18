import 'package:chess_game/helper/piece.dart';
import 'package:chess_game/widget/square.dart';
import 'package:flutter/material.dart';
import 'package:chess_game/helper/helper_methods.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  ChessPiece myPawn=ChessPiece(type: ChessPieceType.pwan, isWhite: true, imagePath: "lib/images/pawn.png");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GridView.builder(
              itemCount: 8 * 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 8),
              itemBuilder: (context, index) {
                return Square(isWhite: isWhite(index), chessPiece: myPawn,);
              }),
        ),
      ),
    );
  }
}
