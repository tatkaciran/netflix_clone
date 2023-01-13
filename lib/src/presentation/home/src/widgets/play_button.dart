import 'package:flutter/material.dart';
import 'package:netflix_clone/src/constants/constants.dart';

class PlayButton extends ElevatedButton {
  PlayButton({
    super.key,
    super.onPressed,
  }) : super(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            fixedSize: const Size(
              UISize.fixedXXlarge * 1.2,
              UISize.fixedXXlarge * 1.2,
            ),
            backgroundColor: UIColor.buttonColor,
            shape: const CircleBorder(),
          ),
          child: const Icon(
            Icons.play_arrow,
            size: UISize.fixedXlarge,
            color: UIColor.buttonIconColor,
          ),
        );
}
