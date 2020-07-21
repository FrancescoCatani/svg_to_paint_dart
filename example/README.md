# svg_to_paint

svg_to_paint generates dart code from a svg file. This package is an abstraction of NodeJs package svg_to_paint.

## Requirements 

Node.JS v10+

## Install: 

```bash
$ pub global activate svg_to_paint
```

## Usage

1) Convert your xml svg in vector drawable (for example in https://svg2vector.com).

2) Type in terminal:

```bash
svg_to_paint source_file_path destination_path name_file command
```

## Params:

\* - required

- `source_file_path` * - is the path of your file, for example (/Users/user/Desktop/file.xml)

- `destination_path` * - is the destination path of your dart generated files, for example (/Users/user/Desktop)

- `name_file` * - is the name of your file, for example (icon)

- `command` * - represents the coordinates type of svg. You can choose be absolute or relative. 

## Example

Given the svg file icon.xml in the folder named test, we will generate dart files in the same folder.

```bash
svg_to_paint /User/dev/test/icon.xml /User/dev/test icon absolute
```

Generates: 
```
dev
└───test
│   │   auto_painter.dart
│   │   icon_generated.dart
```

Generated icon_generated.dart:

```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

import 'auto_painter.dart'; 

class IconGenerated extends CustomPainter { 

  final viewPortWidth = 24; 
  final viewPortHeight = 24; 

  String path0 = 'M,23.4,12.3,C,23.4,11.5,23.299999999999997,10.700000000000001,23.2,9.9,H,12,V,14.5,H,18.4,C,18.099999999999998,16,17.299999999999997,17.3,15.999999999999998,18.1,V,21.1,H,19.799999999999997,C,22.1,19,23.4,15.9,23.4,12.3,Z';
  String path1 = 'M,12,24,C,15.2,24,17.9,22.9,19.9,21.1,L,16.099999999999998,18.1,C,14.999999999999998,18.8,13.599999999999998,19.200000000000003,11.999999999999998,19.200000000000003,C,8.899999999999999,19.200000000000003,6.199999999999998,17.1,5.299999999999998,14.300000000000002,H,1.299999999999998,V,17.400000000000002,C,3.3,21.4,7.5,24,12,24,Z';
  String path2 = 'M,5.3,14.3,C,4.8,12.8,4.8,11.200000000000001,5.3,9.700000000000001,V,6.6,H,1.2999999999999998,C,-0.40000000000000013,10,-0.40000000000000013,14,1.2999999999999998,17.299999999999997,L,5.3,14.3,Z';
  String path3 = 'M,12,4.8,C,13.7,4.8,15.3,5.3999999999999995,16.6,6.6,L,16.6,6.6,L,20,3.2,C,17.8,1.2000000000000002,15,0.10000000000000009,12,0.10000000000000009,C,7.5,0,3.3,2.6,1.3,6.6,L,5.3,9.7,C,6.2,6.9,8.9,4.8,12,4.8,Z';

  @override
   void paint(Canvas canvas, Size size) {
    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height),
        Paint()..color = Color(0xFFffffff)); 

  canvas.drawPath(drawPath(path0, viewPortWidth, viewPortHeight, size), Paint()..color = Color(0xFF4285F4)); 
  canvas.drawPath(drawPath(path1, viewPortWidth, viewPortHeight, size), Paint()..color = Color(0xFF34A853)); 
  canvas.drawPath(drawPath(path2, viewPortWidth, viewPortHeight, size), Paint()..color = Color(0xFFFBBC04)); 
  canvas.drawPath(drawPath(path3, viewPortWidth, viewPortHeight, size), Paint()..color = Color(0xFFEA4335)); 
 }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false; 

} 

```

and auto_painter.dart which will contains the methods to draw

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
