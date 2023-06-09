import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_block/bloc/home_bloc.dart';
import 'package:rest_api_block/cubit/home_cubit.dart';
import 'package:rest_api_block/service/home_service.dart';

import '../home/bloc_page.dart';
import '../home/cubit_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => HomeBloc(homeService)..add(FetchEvent()),
        child: const BlocPage(),
      ),
      // home: BlocProvider(
      //   create: (context) => HomeCubit(homeService)..getUsers(),
      //   child: const CubitPage(),
      // ),
    );
  }
}
