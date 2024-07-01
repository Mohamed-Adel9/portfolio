import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubits/navbar_cubit/states.dart';

class NavbarCubit extends Cubit<NavbarStates> {
  NavbarCubit() : super(NavbarInitState());

  ScrollController scrollController = ScrollController();

  void scrollPosition (double position){
    scrollController.animateTo(
        position,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut
    );
  }

}