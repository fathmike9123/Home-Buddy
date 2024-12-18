import 'package:flutter/material.dart';
import 'package:googleapis/vision/v1.dart';

class UserDataContainer extends StatefulWidget {
  final Widget child;

  UserDataContainer({this.child});

  static UserDataContainerState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserData>().data;
  }

  @override
  UserDataContainerState createState() => UserDataContainerState();
}

class UserDataContainerState extends State<UserDataContainer> {
  bool isAnswered = false;
  bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    return UserData(
      child: widget.child,
      data: this,
    );
  }
}

class UserData extends InheritedWidget {
  final UserDataContainerState data;

  const UserData({
    Key key,
    this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(UserData old) {
    return true;
  }
}
