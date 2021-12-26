Create mission bar with ease

![Mission bar demo](lib/assets/demo.png)

## Ussage
```dart
MissionBar(
          value: 10,
          min: 0,
          max: 100,
          iconWidth: 55,
          iconList: [
            Image(
              image: AssetImage('assets/image/1.png'),
              width: 60,
            ),
            Image(
              image: AssetImage('assets/image/2.png'),
              width: 60,
            ),
            Image(
              image: AssetImage('assets/image/3.png'),
              width: 60,
            ),
            Image(
              image: AssetImage('assets/image/4.png'),
              width: 60,
            )
          ],
          sliderPadding: EdgeInsets.only(left: 53, right: 53),
          sliderActiveColor: Colors.red,
          sliderInActiveColor: Colors.grey,
        )),
     
```

## Get Started
1. Add the below dependency to your pubspec
```
dependencies:
  mission_bar: ^1.0.0
```

2. Install
```
flutter pub get
```

## Contributing
Pull requests are welcome!