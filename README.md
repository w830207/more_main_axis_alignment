# more_main_axis_alignment

<img src="https://raw.githubusercontent.com/w830207/more_main_axis_alignment/main/doc/meme.webp" width="50%" height="50%">

## Features

<img src="https://raw.githubusercontent.com/w830207/more_main_axis_alignment/main/doc/feature.webp" width="50%" height="50%">

## Getting started

Add the package to your pubspec.yaml:

```yaml
dependencies:
  more_main_axis_alignment: 0.0.2
```

In your dart file, import the library:

```dart
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';
```

## Usage
Flex
```dart
MoreFlex(
    direction: Axis.horizontal,
    moreMainAxisAlignment: MoreMainAxisAlignment.spaceBeside,
    children: [
      for (int i = 0; i < 5; i++)
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
    ],
  ),
```
Row
```dart
MoreRow(
    moreMainAxisAlignment: MoreMainAxisAlignment.spaceBetweenStep,
    children: [
      for (int i = 0; i < 5; i++)
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
    ],
  ),
```
Column
```dart
MoreColumn(
    moreMainAxisAlignment: MoreMainAxisAlignment.custom,
    customList: const [0, 0.25, 0.35, 0.5, 0.98],
    children: [
      for (int i = 0; i < 5; i++)
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
    ],
  ),
```


### Suggestions welcome！
