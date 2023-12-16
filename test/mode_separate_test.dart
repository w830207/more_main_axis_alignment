import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';

void main() {
  testWidgets('separate', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.separate,
        separateCount: 1,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
        ],
      ),
    ));

    RenderBox renderBox;
    BoxParentData boxParentData;

    renderBox = tester.renderObject(find.byKey(flexKey));
    expect(renderBox.size.width, equals(800.0));
    expect(renderBox.size.height, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child0Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(0.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets("separate is equal to children's length",
      (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.separate,
        separateCount: 3,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
        ],
      ),
    ));

    RenderBox renderBox;
    BoxParentData boxParentData;

    renderBox = tester.renderObject(find.byKey(flexKey));
    expect(renderBox.size.width, equals(800.0));
    expect(renderBox.size.height, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child0Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(500.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(600.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets('separateCount more than children', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.separate,
        separateCount: 100,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
        ],
      ),
    ));

    RenderBox renderBox;
    BoxParentData boxParentData;

    renderBox = tester.renderObject(find.byKey(flexKey));
    expect(renderBox.size.width, equals(800.0));
    expect(renderBox.size.height, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child0Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(0.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(200.0));
  });

  testWidgets('separateCount is negative', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.separate,
        separateCount: -10,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
        ],
      ),
    ));

    RenderBox renderBox;
    BoxParentData boxParentData;

    renderBox = tester.renderObject(find.byKey(flexKey));
    expect(renderBox.size.width, equals(800.0));
    expect(renderBox.size.height, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child0Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(0.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(200.0));
  });
}
