# Ay Khedma Mobile Application

## Contributers

* [Ebrahim Elnemr](https://github.com/ebrahim969)
* [Mustafa Magdy](https://github.com/mustfa-magdy-mohamed-nasr)

## Dependencies

### Main Dependencies

* [flutter_bloc](https://pub.dev/packages/flutter_bloc) : As a state management
* [get](https://pub.dev/packages/get) : I will use it to responsive sizein screens
* [flutter_localizations](https://pub.dev/packages/flutter_localizations) : For change app language
* [go_router](https://pub.dev/packages/go_router) : To routs between views
* [dio](https://pub.dev/packages/dio) : To deal with api
* [dartz](https://pub.dev/packages/dartz) : To handle exceptions wiht failure state 
* [get_it](https://pub.dev/packages/get_it) : As a service locator to accessing service objects like REST API clients
* [cached_network_image](https://pub.dev/packages/cached_network_image) : To handle images when it received by null value
* [curved_navigation_bar](https://pub.dev/packages/curved_navigation_bar) : To create beautiful nav bar
* [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) : For awesome icons
* [google_maps_flutter](https://pub.dev/packages/google_maps_flutter) : To deale with maps
* [flutter_map](https://pub.dev/packages/flutter_map)
* [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications) : To deal with notifications
* [flutter_svg](https://pub.dev/packages/flutter_svg) : To deal with svg images

## Architecture Pattern

### MVVM

## Folders Structure

### I devided the progect into tow folders: 
#### core : it contains all constants and helpers and general widgets
#### features : It contains all the features of the project, and every feature it contains tow folders => data and presentation that's a layers, data layer has a models and repos, presentaion layer has a view models (it contains blocs and cubits to handle states and business logic) and views (it contains all of ui)


## Local Deployment

Clone the repository
```shell
git clone https://github.com/git-push-masters/ay-khedma-mobile.git
```
