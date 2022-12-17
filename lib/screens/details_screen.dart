import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_downloader/cubit/app_cubit.dart';
import 'package:tiktok_downloader/models/model.dart';
import 'package:tiktok_downloader/webview.dart';

class DetailsScreen extends StatelessWidget {
 final AppModel model;


  DetailsScreen(this.model);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> AppCubit(),
      child:BlocConsumer<AppCubit,AppState>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blueGrey,
                          Colors.blueGrey[600]!,
                          Colors.blueGrey[400]!,
                          Colors.brown[200]!,
                          Colors.brown[300]!,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WebViewScreen(url: '${model.data!.play}'),
                                  ));
                            },
                            child:
                            Image(image: NetworkImage('${model.data!.cover}',),width:450,height: 650,),
                          ),
                          SizedBox(height: 35,),
                          Container(
                            height: 45,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: MaterialButton(
                              onPressed: () {
                                AppCubit.get(context).dwonloadVideo(model.data!.play!);
                              },
                              child: Text(
                                'Download Video',
                                style: TextStyle(color: Colors.black),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ) ,
    );
  }
}
