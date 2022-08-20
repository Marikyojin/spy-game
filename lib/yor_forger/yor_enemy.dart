import 'dart:ui';
import 'package:bonfire/bonfire.dart';

import 'package:flutter/widgets.dart';

import 'package:spy/yor_forger/yor_sprite.dart';


class YorEnemy extends SimpleEnemy with ObjectCollision{
  YorEnemy()
      : super(
    position: Vector2(
      32 * 3,
      32 * 7,
    ),
    size: Vector2(
      32,
      32,
    ),
    animation: SimpleDirectionAnimation(
      runRight: YorSprite.runRight,
      idleRight: YorSprite.idleRight,
      runLeft: YorSprite.runLeft,
      idleLeft: YorSprite.idleLeft
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
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (Player){ },
      radiusVision: 32*6
    );
    super.update(dt);
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