import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class SpellSlotTracker extends StatefulWidget {
  @override
  _SpellSlotTrackerState createState() => _SpellSlotTrackerState();
}

int _lvl_1_slot = 0;
int _lvl_2_slot = 0;
int _lvl_3_slot = 0;
int _lvl_4_slot = 0;
int _lvl_5_slot = 0;
int _lvl_6_slot = 0;
int _lvl_7_slot = 0;
int _lvl_8_slot = 0;
int _lvl_9_slot = 0;

int _lvlOneSlotMax;
int _lvlTwoSlotMax;
int _lvlThreeSlotMax;
int _lvlFourSlotMax;
int _lvlFiveSlotMax;
int _lvlSixSlotMax;
int _lvlSevenSlotMax;
int _lvlEightSlotMax;
int _lvlNineSlotMax;
double spacing = 5.0;

class _SpellSlotTrackerState extends State<SpellSlotTracker> {
  static const classList = <String>[
    'ArcaneTrickster', //AC
    'Bard', //wiz
    'Cleric', //wiz
    'Druid', //wiz
    'EldritchKnight', //AC
    'Paladin', //pal
    'Ranger', //pal
    'Sorceror', //wiz
    'Warlock',
    'Wizard' //wiz
  ];

  static const classLvl = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20'
  ];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = classList
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  final List<DropdownMenuItem<String>> _dropDownLvlItems = classLvl
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  void _rest() {
    setState(() {
      _lvl_1_slot = _lvlOneSlotMax;
      _lvl_2_slot = _lvlTwoSlotMax;
      _lvl_3_slot = _lvlThreeSlotMax;
      _lvl_4_slot = _lvlFourSlotMax;
      _lvl_5_slot = _lvlFiveSlotMax;
      _lvl_6_slot = _lvlSixSlotMax;
      _lvl_7_slot = _lvlSevenSlotMax;
      _lvl_8_slot = _lvlEightSlotMax;
      _lvl_9_slot = _lvlNineSlotMax;
    });
  }

  void _reset(){
    _lvlOneSlotMax = 0;
    _lvlTwoSlotMax = 0;
    _lvlThreeSlotMax = 0;
    _lvlFourSlotMax = 0;
    _lvlFiveSlotMax = 0;
    _lvlSixSlotMax = 0;
    _lvlSevenSlotMax = 0;
    _lvlEightSlotMax = 0;
    _lvlNineSlotMax = 0;
  }

  void _useSpell1() {
    setState(() {
      _lvl_1_slot--;

      if (_lvl_1_slot <= 0) {
        _lvl_1_slot = 0;
      }
    });
  }

  void _useSpell2() {
    setState(() {
      _lvl_2_slot--;

      if (_lvl_2_slot <= 0) {
        _lvl_2_slot = 0;
      }
    });
  }

  void _useSpell3() {
    setState(() {
      _lvl_3_slot--;

      if (_lvl_3_slot <= 0) {
        _lvl_3_slot = 0;
      }
    });
  }

  void _useSpell4() {
    setState(() {
      _lvl_4_slot--;

      if (_lvl_4_slot <= 0) {
        _lvl_4_slot = 0;
      }
    });
  }

  void _useSpell5() {
    setState(() {
      _lvl_5_slot--;

      if (_lvl_5_slot <= 0) {
        _lvl_5_slot = 0;
      }
    });
  }

  void _useSpell6() {
    setState(() {
      _lvl_6_slot--;

      if (_lvl_6_slot <= 0) {
        _lvl_6_slot = 0;
      }
    });
  }

  void _useSpell7() {
    setState(() {
      _lvl_7_slot--;

      if (_lvl_7_slot <= 0) {
        _lvl_7_slot = 0;
      }
    });
  }

  void _useSpell8() {
    setState(() {
      _lvl_8_slot--;

      if (_lvl_8_slot <= 0) {
        _lvl_8_slot = 0;
      }
    });
  }

  void _useSpell9() {
    setState(() {
      _lvl_9_slot--;

      if (_lvl_9_slot <= 0) {
        _lvl_9_slot = 0;
      }
    });
  }

  String _playerClass = 'ArcaneTrickster';
  String _playerLvl = '0';

  bool _enabled = true;
  bool _enabledWar = true;

  @override
  Widget build(BuildContext context) {
    var _onPressed5War;
    if (_enabledWar) {
      _onPressed5War = _useSpell5;
    }
    var _onPressed6;
    if (_enabled) {
      _onPressed6 = _useSpell6;
    }

    var _onPressed7;
    if (_enabled) {
      _onPressed7 = _useSpell7;
    }
    var _onPressed8;
    if (_enabled) {
      _onPressed8 = _useSpell8;
    }
    var _onPressed9;
    if (_enabled) {
      _onPressed9 = _useSpell9;
    }

    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-7511726508597203~5056814937");
    myBanner
      ..load()
      ..show();
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Text('Spell Slot Tracker')),
      ),
      body: Center(
        child: Container(
          color: Colors.white30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text('Class'),
                trailing: DropdownButton(
                  value: _playerClass,
                  items: _dropDownMenuItems,
                  onChanged: ((String newValue) {
                    setState(() {
                      _playerClass = newValue;
                      if (_playerClass == 'ArcaneTrickster' ||
                          _playerClass == 'EldritchKnight') {
                        setState(() {
                          _enabledWar = false;
                          _enabled = false;
                          _reset();
                        });
                      }
                      if (_playerClass == 'Bard' ||
                          _playerClass == 'Cleric' ||
                          _playerClass == 'Druid' ||
                          _playerClass == 'Sorceror' ||
                          _playerClass == 'Wizard') {
                        setState(() {
                          _enabledWar = true;
                          _enabled = true;
                          _reset();
                        });
                      }
                      if (_playerClass == 'Paladin' ||
                          _playerClass == 'Ranger') {
                        setState(() {
                          _enabled = false;
                          _reset();
                        });
                      }
                      if (_playerClass == 'Warlock') {
                        setState(() {
                          _enabledWar = true;
                          _reset();
                        });
                      }
                    });
                  }),
                  hint: Text('Class'),
                ),
              ),
              ListTile(
                title: Text('Level'),
                trailing: DropdownButton(
                  value: _playerLvl,
                  items: _dropDownLvlItems,
                  onChanged: ((String newValue) {
                    setState(() {
                      _playerLvl = newValue;
                      // ignore: unrelated_type_equality_checks

                      //------------------Arcane Trickster ------------
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '1' ||
                          _playerLvl == '2') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _lvl_1_slot = _lvlOneSlotMax;
                          _lvl_2_slot = _lvlTwoSlotMax;
                          _lvl_3_slot = _lvlThreeSlotMax;
                          _lvl_4_slot = _lvlFourSlotMax;
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '3') {
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '4') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '5') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '6') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '7') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '8') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '9') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '10') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '11') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '12') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '13') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '14') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '15') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '16') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '17') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '18') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '19') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;

                          _rest();
                        });
                      }
                      if (_playerClass == 'ArcaneTrickster' &&
                          _playerLvl == '20') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;

                          _rest();
                        });
                      }

                      //------------------Elderitch Knight ------------
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '1' ||
                          _playerLvl == '2') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '3') {
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '4') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '5') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '6') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '7') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '8') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '9') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '10') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '11') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '12') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '13') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '14') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '15') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '16') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '17') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '18') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '19') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;

                          _rest();
                        });
                      }
                      if (_playerClass == 'EldritchKnight' &&
                          _playerLvl == '20') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;

                          _rest();
                        });
                      }

                      //------------------Paladin------------
                      if (_playerClass == 'Paladin' && _playerLvl == '1') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '2') {
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '3') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '4') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '5') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '6') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '7') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '8') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '9') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '10') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '11') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '12') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '13') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '14') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '15') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '16') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '17') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '18') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '19') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Paladin' && _playerLvl == '20') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;

                          _rest();
                        });
                      }

                      //---------------------Ranger-------------------
                      if (_playerClass == 'Ranger' && _playerLvl == '1') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '2') {
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '3') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '4') {
                        setState(() {
                          _lvlOneSlotMax = 3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '5') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '6') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '7') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '8') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '9') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '10') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '11') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '12') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '13') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '14') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '15') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '16') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '17') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '18') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '19') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Ranger' && _playerLvl == '20') {
                        setState(() {
                          _lvlOneSlotMax = 4;
                          _lvlTwoSlotMax = 3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;

                          _rest();
                        });
                      }
                      //------------Warlock-------------------
                      if (_playerClass == 'Warlock' && _playerLvl == '1') {
                        setState(() {
                          _lvlOneSlotMax = 1;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '2') {
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '3') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '4') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '5') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '6') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '7') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '8') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '9') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 2;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '10') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 2;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '11') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 3;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '12') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 3;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '13') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 3;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '14') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 3;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '15') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 3;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '16') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 3;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '17') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 4;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '18') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 4;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '19') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 4;

                          _rest();
                        });
                      }
                      if (_playerClass == 'Warlock' && _playerLvl == '20') {
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 4;

                          _rest();
                        });
                      }


                      if(_playerClass == 'Bard' && _playerLvl == '0'){
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '1'){
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '2'){
                        setState(() {
                          _lvlOneSlotMax=3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '3'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '4'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '5'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '6'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '7'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '8'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '9'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '10'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '11'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '12'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '13'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '14'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '15'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '16'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '17'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '18'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '19'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Bard' && _playerLvl == '20'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 2;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }

                      if(_playerClass == 'Cleric' && _playerLvl == '0'){
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '1'){
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '2'){
                        setState(() {
                          _lvlOneSlotMax=3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '3'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '4'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '5'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '6'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '7'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '8'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '9'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '10'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '11'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '12'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '13'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '14'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '15'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '16'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '17'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '18'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '19'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Cleric' && _playerLvl == '20'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 2;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }

                      if(_playerClass == 'Druid' && _playerLvl == '0'){
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '1'){
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '2'){
                        setState(() {
                          _lvlOneSlotMax=3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '3'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '4'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '5'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '6'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '7'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '8'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '9'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '10'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '11'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '12'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '13'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '14'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '15'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '16'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '17'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '18'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '19'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Druid' && _playerLvl == '20'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 2;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }

                      if(_playerClass == 'Sorceror' && _playerLvl == '0'){
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '1'){
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '2'){
                        setState(() {
                          _lvlOneSlotMax=3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '3'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '4'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '5'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '6'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '7'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '8'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '9'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '10'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '11'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '12'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '13'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '14'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '15'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '16'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '17'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '18'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '19'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Sorceror' && _playerLvl == '20'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 2;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }

                      if(_playerClass == 'Wizard' && _playerLvl == '0'){
                        setState(() {
                          _lvlOneSlotMax = 0;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '1'){
                        setState(() {
                          _lvlOneSlotMax = 2;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();

                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '2'){
                        setState(() {
                          _lvlOneSlotMax=3;
                          _lvlTwoSlotMax = 0;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '3'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=2;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '4'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 0;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '5'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 2;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '6'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 0;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '7'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 1;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '8'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 2;
                          _lvlFiveSlotMax = 0;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '9'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 1;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '10'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 0;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '11'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '12'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 0;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '13'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '14'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 0;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '15'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '16'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 0;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '17'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 2;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '18'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 1;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '19'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 1;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }
                      if(_playerClass == 'Wizard' && _playerLvl == '20'){
                        setState(() {
                          _lvlOneSlotMax=4;
                          _lvlTwoSlotMax=3;
                          _lvlThreeSlotMax = 3;
                          _lvlFourSlotMax = 3;
                          _lvlFiveSlotMax = 3;
                          _lvlSixSlotMax = 2;
                          _lvlSevenSlotMax = 2;
                          _lvlEightSlotMax = 1;
                          _lvlNineSlotMax = 1;

                          _rest();
                        });
                      }

                    });
                  }),
                  hint: Text('Level'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                  ),
                  Spacer(),
                  Text(
                    'Lvl1',
                  ),
                  Spacer(),
                  Text('Lvl2'),
                  Spacer(),
                  Text(
                    'Lvl3',
                  ),
                  Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _useSpell1,
                        child: Text('$_lvl_1_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _useSpell2,
                        child: Text('$_lvl_2_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _useSpell3,
                        child: Text('$_lvl_3_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                  ),
                  Spacer(),
                  Text(
                    'Lvl4',
                  ),
                  Spacer(),
                  Text('Lvl5'),
                  Spacer(),
                  Text('Lvl6'),
                  Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _useSpell4,
                        child: Text('$_lvl_4_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _onPressed5War,
                        child: Text('$_lvl_5_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _onPressed6,
                        child: Text('$_lvl_6_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                  ),
                  Spacer(),
                  Text(
                    'Lvl7',
                  ),
                  Spacer(),
                  Text('Lvl8'),
                  Spacer(),
                  Text('Lvl9'),
                  Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _onPressed7,
                        child: Text('$_lvl_7_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _onPressed8,
                        child: Text('$_lvl_8_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.all(spacing),
                      color: Colors.black,
                      child: FlatButton(
                        onPressed: _onPressed9,
                        child: Text('$_lvl_9_slot',
                            style: TextStyle(fontSize: 55)),
                        textColor: Colors.white,
                      ))
                ],
              ),
              FlatButton(onPressed: _rest, child: Text('Rest')),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io',
  childDirected: false,
  // or MobileAdGender.female, MobileAdGender.unknown
  testDevices: <String>[], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: 'ca-app-pub-7511726508597203/5986753223', //ca-app-pub-7511726508597203~5056814937
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);