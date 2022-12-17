import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_downloader/cubit/app_cubit.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var appModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Download',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Galary',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Image.asset(
                            'assets/images/logo_tiktok_1.jpg',
                            fit: BoxFit.cover,
                            height: 250,
                            width: 250,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          TextFormField(
                            onChanged: (value){
                              cubit.url_video= value;

                            },
                            keyboardType: TextInputType.url,
                            controller: cubit.linkDownloader,
                            onFieldSubmitted: (value) {
                              value = cubit.linkDownloader.text;
                            },
                            onSaved: (value) {
                              value = cubit.linkDownloader.text;
                            },
                            onTap: () {
                              print('#################${cubit.linkDownloader.text}###################');
                            cubit.url_video=  cubit.linkDownloader.text;

                            },
                            decoration: InputDecoration(
                              labelText: 'Link Video',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            height: 45,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: MaterialButton(
                              onPressed: () {

                                cubit.getLinkVideo(context);
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),);
                              },
                              child: Text(
                                'Get Video',
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
      ),
    );
  }
}
