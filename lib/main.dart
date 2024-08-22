import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart' show SingleChildWidget;
import 'package:now_tv_v1/onboarding/cubit/onboarding_cubit.dart';
import 'package:now_tv_v1/routes/now_tv_routes.dart';
import 'package:now_tv_v1/shared/core/now_tv_string.dart';
import 'theme/theme_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait(<Future<void>>[
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]),
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<OnboardingCubit>(
          create: (_) => OnboardingCubit(),
        ),
      ],
      child: MaterialApp(
        theme: theme,
        title: NowTvStrings.appTitle,
        debugShowCheckedModeBanner: false,
        initialRoute: NowTvRoutes.initialRoute,
        routes: NowTvRoutes.routes,
      ),
    );
  }
}
