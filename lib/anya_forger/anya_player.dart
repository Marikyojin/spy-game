import 'dart:ui';
import 'package:bonfire/bonfire.dart';

import 'package:flutter/widgets.dart';

import 'package:spy/anya_forger/anya_sprite.dart';


class AnyaPlayer extends SimplePlayer with ObjectCollision{
  AnyaPlayer()
      : super(
    position: Vector2(
      32 * 10,
      32 * 9,
    ),
    size: Vector2(
      32,
      32,
    ),
    animation: SimpleDirectionAnimation(
      runUp: AnyaSprite.runUp,
      idleUp: AnyaSprite.idleUp,
      runRight: AnyaSprite.runRight,
      idleRight: AnyaSprite.idleRight,
      runDown: AnyaSprite.runDown,
      idleDown: AnyaSprite.idleDown,
      runLeft: AnyaSprite.runLeft,
      idleLeft: AnyaSprite.idleLeft
    ),
  ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(20, 20),
            align: Vector2(6, 15),
          ),
        ],
      ),
    );
  }

  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(
      canvas,
      borderWidth: 1,
      height: 2,
      align: const Offset(0, 0),
    );
    super.render(canvas);
  }




}