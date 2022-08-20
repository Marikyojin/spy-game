import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:spy/anya_forger/anya_player.dart';
import 'package:spy/yor_forger/yor_enemy.dart';



class Starter extends StatefulWidget {
  static const String routName = "starter";
  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
        map: TiledWorldMap(
          'maps/living_room.json',
          forceTileSize: Size(32, 32),
        ),
        player: AnyaPlayer(),
        joystick: JoystickMoveToPosition(
          mouseButtonUsedToMoveToPosition: MouseButton.left
        ),
        components: [
          YorEnemy()
        ],
    );
  }
}
