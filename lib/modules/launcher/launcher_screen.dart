import 'package:flutter_template_project/core/loader/load_modules.dart';
import 'package:flutter_template_project/core/management/theme/bloc/theme_bloc.dart';
import 'package:flutter_template_project/core/management/theme/theme_manager.dart';
import 'package:flutter_template_project/routes/route_provider.dart';

class LauncherScreen extends StatefulWidget {
  const LauncherScreen({super.key});

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => ThemeBloc(),
      )
    ], child: getLauncherScreen());
  }

  Widget getLauncherScreen() {
    return BlocBuilder<ThemeBloc, AppState>(builder: (context, state) {
      print("Theme Manager ${ThemeManager.mode.name}");
      return ResponsiveSizer(builder: (p0, p1, p2) {
        return MaterialApp.router(
          themeMode: ThemeManager.mode,
          darkTheme: ThemeManager.appThemeData[AppTheme.Dark],
          theme: ThemeManager.appThemeData[AppTheme.Light],
          routerConfig: AppRouter.graph,
        );
      });
    });
  }
}
