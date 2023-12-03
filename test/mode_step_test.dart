import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';

void main() {
  testWidgets('spaceBetweenStep', (WidgetTester tester) async {
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
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceBetweenStep,
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
    expect(boxParentData.offset.dx, equals(0.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(130.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(290.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(480.0));

    renderBox = tester.renderObject(find.byKey(child4Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets('spaceBetweenStepBack', (WidgetTester tester) async {
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
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceBetweenStepBack,
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
    expect(boxParentData.offset.dx, equals(0.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(220.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(410.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(570.0));

    renderBox = tester.renderObject(find.byKey(child4Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets('spaceAroundStep', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceAroundStep,
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
    expect(boxParentData.offset.dx, equals(50.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(250.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(500.0));
  });

  testWidgets('spaceAroundBack', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceAroundStepBack,
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
    expect(boxParentData.offset.dx, equals(200.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(450.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(650.0));
  });
}
