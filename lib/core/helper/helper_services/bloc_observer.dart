import 'dart:developer';

import 'package:bloc/bloc.dart';

class MyBlocObserver implements BlocObserver {
@override
  void onChange(BlocBase bloc, Change change) {
    log("Change = $change");
  }

  @override
  void onClose(BlocBase bloc) {
   log("close = $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
   log("create = $bloc");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
  }
}