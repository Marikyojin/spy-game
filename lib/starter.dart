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
    return Stack(
      children: [
        BonfireTiledWidget(
          map: TiledWorldMap(
            'maps/living_room.json',
            forceTileSize: Size(32, 32),
          ),
          player: AnyaPlayer(),
          joystick: JoystickMoveToPosition(
              mouseButtonUsedToMoveToPosition: MouseButton.left),
          components: [YorEnemy()],
        ),
        Container(
          margin: EdgeInsets.only(top: 25.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 10.0, top: 16.0, bottom: 4.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 25.0),
                        child: Text(
                          "Score",
                          style: TextStyle(
                              fontFamily: '8BitMadness',
                              fontSize: 32.0,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                            fontFamily: '8BitMadness',
                            fontSize: 32.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
