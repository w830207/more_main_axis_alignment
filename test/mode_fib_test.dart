import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';

void main() {
  testWidgets('spaceBetweenFib', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');
    const Key child3Key = Key('child3');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceBetweenFib,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
          SizedBox(key: child3Key, width: 100.0, height: 100.0),
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
    expect(boxParentData.offset.dx, equals(200.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(400.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets('spaceBetweenFibBack', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');
    const Key child3Key = Key('child3');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceBetweenFibBack,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
          SizedBox(key: child3Key, width: 100.0, height: 100.0),
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
    expect(boxParentData.offset.dx, equals(300.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(500.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets('spaceAroundFib', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');
    const Key child3Key = Key('child3');
    const Key child4Key = Key('child4');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceAroundFib,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
          SizedBox(key: child3Key, width: 100.0, height: 100.0),
          SizedBox(key: child4Key, width: 100.0, height: 100.0),
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
    expect(boxParentData.offset.dx, equals(15.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(130.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(260.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(405.0));

    renderBox = tester.renderObject(find.byKey(child4Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(580.0));
  });

  testWidgets('spaceAroundFibBack', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');
    const Key child3Key = Key('child3');
    const Key child4Key = Key('child4');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceAroundFibBack,
        children: <Widget>[
          SizedBox(key: child0Key, width: 100.0, height: 100.0),
          SizedBox(key: child1Key, width: 100.0, height: 100.0),
          SizedBox(key: child2Key, width: 100.0, height: 100.0),
          SizedBox(key: child3Key, width: 100.0, height: 100.0),
          SizedBox(key: child4Key, width: 100.0, height: 100.0),
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
    expect(boxParentData.offset.dx, equals(120.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(295.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(440.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(570.0));

    renderBox = tester.renderObject(find.byKey(child4Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(685.0));
  });
}