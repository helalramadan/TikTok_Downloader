import 'package:flutter/material.dart';
import 'package:tiktok_downloader/cubit/app_cubit.dart';
import 'package:tiktok_downloader/webview.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                              builder: (context) => WebViewScreen(url: '${AppCubit.get(context).url_video}'),
                            ));
                      },
                    // Image(image: NetworkImage('https://wallpapercave.com/uwp/uwp884417.jpeg',),width:450,height: 650,),
                        child: Image.asset(
                      'assets/images/logo_tiktok.jpg',
                      width: 450,
                      height: 650,
                      fit: BoxFit.cover,
                    ),),
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
  }
}
