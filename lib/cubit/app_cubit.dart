

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_downloader/dio/dio_api.dart';
import 'package:tiktok_downloader/models/model.dart';
import 'package:tiktok_downloader/screens/details_screen.dart';
import 'package:tiktok_downloader/strings.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  TextEditingController linkDownloader =TextEditingController();
  String url_video='';

  static AppCubit get(context)=>BlocProvider.of(context);
AppModel? model;
  void getLinkVideo(context){
    // print('===================${linkDownloader.text.toString()}=================');
    // print('===================${url_video}=================');
    emit(LoadingState());
    DioApi.getData(
        url: BASE_URL,
        query: {
          'url':linkDownloader.text,'hd':0
        }
    ).then((value) {

      model=AppModel.fromJson(value.data);
      print(model);

      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen( model!)));
      emit(SuccessState());
    }).catchError((e){
      emit(ErrorState(e.toString()));
    });
  }
}
