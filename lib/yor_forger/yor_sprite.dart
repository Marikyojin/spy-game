import 'package:bonfire/bonfire.dart';

class YorSprite {
  static Future<SpriteAnimation> _sequenceImage(
      String fileName, {
        int amount = 3,
      }) {
    return SpriteAnimation.load(
      'yor_forger/$fileName',
      SpriteAnimationData.sequenced(
        amount: amount,
        stepTime: 0.30,
        textureSize: Vector2(66, 66),
        texturePosition: Vector2(0, 0),
      ),
    );
  }

  

  

  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('yor_left.png');
  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('yor_left.png');

  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('yor_right.png');
  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('yor_right.png');

}