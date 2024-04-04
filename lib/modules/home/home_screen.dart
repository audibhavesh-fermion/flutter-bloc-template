import 'package:flutter_template_project/core/loader/load_modules.dart';
import 'package:flutter_template_project/core/management/theme/bloc/theme_bloc.dart';
import 'package:flutter_template_project/core/management/theme/bloc/theme_event.dart';
import 'package:flutter_template_project/core/management/theme/theme_manager.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeBloc(),
        child: Scaffold(body: getThemeChooser()));
  }

  Widget getThemeChooser() {
    return BlocBuilder<ThemeBloc, AppState>(builder: (context, state) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
              title: Text("System"),
              leading: Radio(
                value: ThemeMode.system,
                groupValue: ThemeManager.mode,
                onChanged: (ThemeMode? value) {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ThemeEvent(mode: value ?? ThemeMode.system));
                },
              )),
          ListTile(
              title: Text("Light"),
              leading: Radio(
                value: ThemeMode.light,
                groupValue: ThemeManager.mode,
                onChanged: (ThemeMode? value) {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ThemeEvent(mode: value ?? ThemeMode.light));
                },
              )),
          ListTile(
              title: Text("Dark"),
              leading: Radio(
                value: ThemeMode.dark,
                groupValue: ThemeManager.mode,
                onChanged: (ThemeMode? value) {
                  BlocProvider.of<ThemeBloc>(context)
                      .add(ThemeEvent(mode: value ?? ThemeMode.dark));
                },
              ))
        ],
      );
    });
  }
}
