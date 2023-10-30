import 'package:flutter/material.dart';
import 'package:news_app_machine_test/application/home/home_bloc.dart';
import 'package:news_app_machine_test/core/dependency_injection/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_machine_test/presentation/home/screens/screen_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenHome(),
      ),
    );
  }
}
