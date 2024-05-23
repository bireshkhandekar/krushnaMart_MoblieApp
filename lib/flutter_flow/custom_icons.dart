import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _myconfirmiconFamily = 'Myconfirmicon';
  static const String _myfailediconFamily = 'Myfailedicon';

  // Myconfirmicon
  static const IconData ksuccessGreenCheckMarkIcon1 =
      IconData(0xe800, fontFamily: _myconfirmiconFamily);

  // Myfailedicon
  static const IconData kcheckboxCrossRedIcon =
      IconData(0xe802, fontFamily: _myfailediconFamily);
}
