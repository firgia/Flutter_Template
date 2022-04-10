# Flutter Template 


![3  promo - clean code](https://user-images.githubusercontent.com/89120990/162611162-0eda407b-2df5-440a-9181-5b917fad0a62.png)



### Config
config folder contains the following folders:
- **routes :** The route folder contains all the files which are based on the application screens navigation code
- **themes :** If our application supports light and dark theme and these themes are custom themes then need to create two files light_theme.dart, dark_theme.dart where we will be adding all the colors which are needed for each widget type.
- **translation :** If our application supports multiple languages, we create a new module focused on translation.

### Constans
Here are the following constants which are static throughout the applications :
- **api_path.dart :** When using REST API service in dart then we can store all the API endpoints in a separate file api_path.dart
- **assest_path.dart :** Although we have described the assets path in pubspec.yaml but to use that asset in an application we need to give there relative path in any widgets.
If we add all the assets relative path in one file then it will be easy for us to get all the paths and update the path if required in the future.

### Features
Let's take the example with module dashboard in the application which contains the following folders:
![Untitled](https://user-images.githubusercontent.com/89120990/136682568-3801ca91-3290-46bb-b3a9-12daa7d17ffb.png)
- **Models :** This folder contains the data models which need to be shown on the dashboard screen.
- **Bindings :** constains file for instance controller 
- **Controllers:** contains state management. [learn Getx state management](https://pub.dev/packages/get#state-management)
- **Views :** Components folder contains certain widget components that will be organized in the file dashboard_screen.dart , Screen folder consists of all the screens UI widgets that will be visible to the user.

### Shared Components
In a large scale application, we need to make more customized widgets rather than flutter default widgets. Suppose we need to make use of our own custom RaisedButton, FlatButton, OutlineButton, Divider, CircularLoader, etc which we can use throughout our application then that kind of customization widgets we can add inside  the folder Shared Components

### Utils
Utils folder contains the helpers, services, UI utils, mixins which are used throughout the application
- **Helpers :** In many scenarios, we need to write code multiple times for the same thing like converting the every word first characters to be uppercase usually used in showing titles for any other widgets, etc. This kind of code can be made common to reduce the redundancy and add that code in helpers files which are present in lib/utils/helpers/text_helper.dart.
text_helper.dart will contain all the code which are required to convert the String to show in a Text widget.
- **Mixins :** is a class that contains methods for use by other classes without having to be the parent class of those other classes.” In other words, mixins are normal classes from which we can borrow methods(or variables) from without extending the class.
In the application, we can make different mixins like validation_mixins.dart, orientation_mixins.dart
- **Services :** We will be creating a different kind of service files in the folder lib/utils/services. All the services will be singleton classes.
  1. **local_storage_service.dart :** In this file, we write all the code needed to store and get data from the local storage using the plugin [shared_preferences](https://pub.dev/packages/shared_preferences).
In this file, there will be getters and setters for each and every data to be stored in the local storage.
  2. **rest_api_service.dart :** We do call the rest API to get, store data on a remote database for that we need to write the rest API call at a single place and need to return the data if the rest call is a success or need to return custom error exception on the basis of 4xx, 5xx status code. We can make use of [http](https://pub.dev/packages/http) or [dio](https://pub.dev/packages/dio) package to make the rest API call in the flutter
  3. **native_api_service.dart :** We use multiple packages to access the native services like Camera, Photo Gallery, Location, etc for that we need to write code in a separate file which we can be used from multiple places throughout the application


## Other
- [Why using Getx?](https://pub.dev/packages/get#why-getx)
- [Dio for request API](https://pub.dev/packages/dio)
- [shared_preferences for save your data to local storage](https://pub.dev/packages/shared_preferences)

## Reference
- [Clean architecture by Get_cli](https://pub.dev/packages/get_cli)
- [Flutter scalable folder & files structure](https://medium.com/flutter-community/flutter-scalable-folder-files-structure-8f860faafebd)
