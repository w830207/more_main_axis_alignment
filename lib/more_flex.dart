import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'more_flex_render.dart';

class MoreFlex extends MultiChildRenderObjectWidget {
  const MoreFlex({
    super.key,
    required this.direction,
    this.moreMainAxisAlignment = MoreMainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline, // NO DEFAULT: we don't know what the text's baseline should be
    this.clipBehavior = Clip.none,
    this.customList = const [],
    this.separateCount = 0,
    super.children,
  })  : assert(
            !identical(crossAxisAlignment, CrossAxisAlignment.baseline) ||
                textBaseline != null,
            'textBaseline is required if you specify the crossAxisAlignment with CrossAxisAlignment.baseline'),
        assert(
            !identical(moreMainAxisAlignment, MoreMainAxisAlignment.custom) ||
                customList.length == children.length,
            "customList's length should same as children if you specify the moreMainAxisAlignment with MoreMainAxisAlignment.custom");

  final List<double> customList;
  final Axis direction;
  final MoreMainAxisAlignment moreMainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final Clip clipBehavior;
  final int separateCount;

  bool get _needTextDirection {
    switch (direction) {
      case Axis.horizontal:
        return true;
      case Axis.vertical:
        return crossAxisAlignment == CrossAxisAlignment.start ||
            crossAxisAlignment == CrossAxisAlignment.end;
    }
  }

  @protected
  TextDirection? getEffectiveTextDirection(BuildContext context) {
    return textDirection ??
        (_needTextDirection ? Directionality.maybeOf(context) : null);
  }

  @override
  RenderFlex createRenderObject(BuildContext context) {
    return MoreRenderFlex(
      direction: direction,
      moreMainAxisAlignment: moreMainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: getEffectiveTextDirection(context),
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      clipBehavior: clipBehavior,
      customList: customList,
      separateCount: separateCount,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant MoreRenderFlex renderObject) {
    renderObject
      ..direction = direction
      ..moreMainAxisAlignment = moreMainAxisAlignment
      ..mainAxisSize = mainAxisSize
      ..crossAxisAlignment = crossAxisAlignment
      ..textDirection = getEffectiveTextDirection(context)
      ..verticalDirection = verticalDirection
      ..textBaseline = textBaseline
      ..clipBehavior = clipBehavior
      ..customList = customList;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Axis>('direction', direction));
    properties.add(EnumProperty<MoreMainAxisAlignment>(
        'mainAxisAlignment', moreMainAxisAlignment));
    properties.add(EnumProperty<MainAxisSize>('mainAxisSize', mainAxisSize,
        defaultValue: MainAxisSize.max));
    properties.add(EnumProperty<CrossAxisAlignment>(
        'crossAxisAlignment', crossAxisAlignment));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection,
        defaultValue: null));
    properties.add(EnumProperty<VerticalDirection>(
        'verticalDirection', verticalDirection,
        defaultValue: VerticalDirection.down));
    properties.add(EnumProperty<TextBaseline>('textBaseline', textBaseline,
        defaultValue: null));
  }
}

class MoreRow extends MoreFlex {
  const MoreRow({
    super.key,
    super.moreMainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline, // NO DEFAULT: we don't know what the text's baseline should be
    super.children,
  }) : super(
    direction: Axis.horizontal,
  );
}

class MoreColumn extends MoreFlex {
  const MoreColumn({
    super.key,
    super.moreMainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline, // NO DEFAULT: we don't know what the text's baseline should be
    super.children,
  }) : super(
    direction: Axis.vertical,
  );
}