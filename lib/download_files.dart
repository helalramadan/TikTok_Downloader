

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class DownloadFiles{
 static void openFile({
  required String url,String? fileName,
})async{
   final name =fileName??url.split('/').last;
   final file= await downloadFile( url,name );
   if(file ==null )return;
   print('path : ${file.path}');
   // OpenFile.open(file.path);
  }
 static Future<File?> downloadFile( String url,String name,)async{
    final appStorage=await getApplicationDocumentsDirectory();
    final file =File('${appStorage.path}/${name}');
    final response =await Dio().get(url,options: Options(
      responseType: ResponseType.bytes,
      followRedirects: false,receiveTimeout: 0,
    ),);
    final ref=file.openSync(mode: FileMode.write);
    ref.writeFromSync(response.data);
    await ref.close();
    return file;
 }
}