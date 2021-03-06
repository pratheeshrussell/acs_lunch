import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Settings {
  Settings._();
  static const String appName = "appname";
  static const String baseUrl = "https://pm.agilecyber.co.uk";
  static const httpRequestTimeout = const Duration(seconds: 20);

  static get path async {
    Directory documentsDirectory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    return documentsDirectory.path;
  }

  static get picturePath async {
    return await path + ORIGINALIMAGEPATH;
  }

  static const String THUMBNAILPATH = "/thumbnail";
  static const String DELETEPATH = "/delete";
  static const String ORIGINALIMAGEPATH = "/originalimage";

  static get thumbnailPath async {
    return await path + THUMBNAILPATH;
  }
 static Map timeEntry= {
            "time_entry": {
                "project_id": 342,
                "hours": 0,
                "activity_id": 16,
                "custom_fields": [
                    {
                        "id": 39,
                        "value": "1"
                    },
                    {
                        "id": 41,
                        "value": "1"
                    }
                ],
                "comments" :"I need meals(with one chapati) today"
            }
        }; 
}
