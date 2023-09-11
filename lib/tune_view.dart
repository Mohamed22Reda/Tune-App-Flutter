import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_models.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'sounds/Alarab_Aomar.mp3'),
    TuneModel(color: Color(0xffF89800), sound: 'sounds/Alarab_ElH.mp3'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'sounds/Alarab_Law.mp3'),
    TuneModel(color: Color(0xff4CAF50), sound: 'sounds/Alarab_Rohy.mp3'),
    TuneModel(color: Color(0xff2F9688), sound: 'sounds/Alarab_YaKinzy.mp3'),
    TuneModel(color: Color(0xff2896F3), sound: 'sounds/Alarab_AllemAlby.mp3'),
    TuneModel(color: Color(0xff9C2780), sound: 'sounds/GanbHabiby_AmrDiab.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        centerTitle: true,
        title: const Text('Favorite Tunes'),
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }

}
