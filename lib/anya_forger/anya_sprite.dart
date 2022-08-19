import 'package:bonfire/bonfire.dart';

class AnyaSprite {
  static Future<SpriteAnimation> _sequenceImage(
      String fileName, {
        int amount = 4,
      }) {
    return SpriteAnimation.load(
      'anya_forger/$fileName',
      SpriteAnimationData.sequenced(
        amount: amount,
        stepTime: 0.15,
        textureSize: Vector2(64, 64),
        texturePosition: Vector2(0, 0),
      ),
    );
  }

  static Future<SpriteAnimation> get runUp =>
      _sequenceImage('anya_up.png');
  static Future<SpriteAnimation> get idleUp =>
      _sequenceImage('anya_up.png');

  static Future<SpriteAnimation> get runDown =>
      _sequenceImage('anya_down.png');
  static Future<SpriteAnimation> get idleDown =>
      _sequenceImage('anya_down.png');

  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('anya_left.png');
  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('anya_left.png');

  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('anya_right.png');
  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('anya_right.png');

}