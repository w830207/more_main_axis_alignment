import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';

import 'dart:math' as math;

void main() {
  testWidgets('custom', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');
    const Key child3Key = Key('child3');

    Map<Key, double> customMap = {
      child0Key: -0.1,
      child1Key: 0.5,
      child2Key: 0.5,
      child3Key: 1.2,
    };

    await tester.pumpWidget(Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.custom,
        customList: customMap.values.toList(),
        children: <Widget>[
          for (Key key in customMap.keys)
            SizedBox(key: key, width: 100.0, height: 100.0),
        ],
      ),
    ));

    RenderBox renderBox;
    BoxParentData boxParentData;

    renderBox = tester.renderObject(find.byKey(flexKey));
    expect(renderBox.size.width, equals(800.0));
    expect(renderBox.size.height, equals(100.0));

    for (MapEntry<Key, double> entry in customMap.entries) {
      double temp = entry.value;
      temp = math.max(temp, 0.0);
      temp = math.min(temp, 1.0);
      renderBox = tester.renderObject(find.byKey(entry.key));
      expect(renderBox.size.width, equals(100.0));
      expect(renderBox.size.height, equals(100.0));
      boxParentData = renderBox.parentData! as BoxParentData;
      expect(boxParentData.offset.dx, equals(temp * 800.0));
    }
  });
}
