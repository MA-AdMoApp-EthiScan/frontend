import 'package:ethiscan/domain/entities/user.dart';
import 'package:ethiscan/presentation/app/custom_app.dart';
import 'package:ethiscan/presentation/home_page.dart';
import 'package:flutter/cupertino.dart';

class AppConnected extends StatefulWidget {
  final User user;

  const AppConnected({Key? key, required this.user}) : super(key: key);

  @override
  _AppConnectedState createState() => _AppConnectedState();
}

class _AppConnectedState extends State<AppConnected> {
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
      child: const CustomApp(
        key: Key('ConnectedApp'),
        home: HomePage(),
      ),
    );
  }
}

class UserProvider extends InheritedWidget {
  final User user;

  const UserProvider({
    // FIXME: might not work
    // TODO: provide bloc instead
    Key? key,
    required this.user,
    required Widget child,
  }) : super(key: key, child: child);

  static User? of(BuildContext context) {
    UserProvider? widget =
        context.dependOnInheritedWidgetOfExactType<UserProvider>();

    return widget!.user;
  }

  // TODO: check if the data changed
  @override
  bool updateShouldNotify(UserProvider old) => true;
}
