import 'package:ethiscan/domain/entities/ethiscan_user.dart';
import 'package:ethiscan/presentation/app/custom_app.dart';
import 'package:ethiscan/presentation/home_page.dart';
import 'package:flutter/cupertino.dart';

class AppConnected extends StatefulWidget {
  final EthiscanUser user;

  const AppConnected({super.key, required this.user});

  @override
  AppConnectedState createState() => AppConnectedState();
}

class AppConnectedState extends State<AppConnected> {
  @override
  void initState() {
    super.initState();

    //todo: requestNotificationPermission();
  }

  @override
  void dispose() {
    //_agendaChecklistBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserProvider(
      user: widget.user,
      child: CustomApp(
        key: const Key('ConnectedApp'),
        home: HomePage(widget.user),
      ),
    );
  }
}

class UserProvider extends InheritedWidget {
  final EthiscanUser user;

  const UserProvider({
    // FIXME: might not work
    // TODO: provide bloc instead
    super.key,
    required this.user,
    required super.child,
  });

  static EthiscanUser? of(BuildContext context) {
    UserProvider? widget =
        context.dependOnInheritedWidgetOfExactType<UserProvider>();
    if (widget?.user == null) {
      throw Exception('UserProvider not found');
    }
    return widget!.user;
  }

  // TODO: check if the data changed
  @override
  bool updateShouldNotify(UserProvider oldWidget) => true;
}
