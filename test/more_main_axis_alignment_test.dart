import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:more_main_axis_alignment/more_main_axis_alignment.dart';

void main() {
  testWidgets('start', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.start,
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

  testWidgets('center', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.center,
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
    expect(boxParentData.offset.dx, equals(250.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(350.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(450.0));
  });

  testWidgets('end', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.end,
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

  testWidgets('spaceBetween', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceBetween,
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
    expect(boxParentData.offset.dx, equals(350.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(700.0));
  });

  testWidgets('spaceAround', (WidgetTester tester) async {
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
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceAround,
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
    expect(boxParentData.offset.dx, equals(450.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(650.0));
  });

  testWidgets('spaceEvenly', (WidgetTester tester) async {
    const Key flexKey = Key('flex');
    const Key child0Key = Key('child0');
    const Key child1Key = Key('child1');
    const Key child2Key = Key('child2');

    await tester.pumpWidget(const Center(
      child: MoreFlex(
        key: flexKey,
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(key: child0Key, width: 200.0, height: 100.0),
          SizedBox(key: child1Key, width: 200.0, height: 100.0),
          SizedBox(key: child2Key, width: 200.0, height: 100.0),
        ],
      ),
    ));

    RenderBox renderBox;
    BoxParentData boxParentData;

    renderBox = tester.renderObject(find.byKey(flexKey));
    expect(renderBox.size.width, equals(800.0));
    expect(renderBox.size.height, equals(100.0));

    renderBox = tester.renderObject(find.byKey(child0Key));
    expect(renderBox.size.width, equals(200.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(50.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(200.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(300.0));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(200.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(550.0));
  });

  testWidgets('spaceBeside', (WidgetTester tester) async {
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
        moreMainAxisAlignment: MoreMainAxisAlignment.spaceBeside,
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
    expect(boxParentData.offset.dx, equals(75.0));

    renderBox = tester.renderObject(find.byKey(child1Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(212.5));

    renderBox = tester.renderObject(find.byKey(child2Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(350.0));

    renderBox = tester.renderObject(find.byKey(child3Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(487.5));

    renderBox = tester.renderObject(find.byKey(child4Key));
    expect(renderBox.size.width, equals(100.0));
    expect(renderBox.size.height, equals(100.0));
    boxParentData = renderBox.parentData! as BoxParentData;
    expect(boxParentData.offset.dx, equals(625.0));
  });
}
