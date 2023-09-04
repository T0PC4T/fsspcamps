import 'package:jaspr/html.dart';

const double SMALL_HEIGHT = 80;
const Color LIGHT = Color.rgb(255, 255, 255);
const Color DARK = Color.rgb(12, 18, 25);
const Color PRIMARY = Color.rgb(12, 43, 140);
const Color SECONDARY = Color.rgb(243, 197, 16);
const SECTION_HEIGHT = Unit.pixels(600);
const EdgeInsets padding = EdgeInsets.all(Unit.pixels(25));

class Section extends StatelessComponent {
  final List<Component> children;
  final Color color;
  final Styles? styles;
  const Section(this.children, {this.color = LIGHT, this.styles});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.combine([
          if (styles != null) styles!,
          Styles.box(
            display: Display.flex,
            width: Unit.percent(100),
            padding: padding,
          ),
          Styles.flexbox(
            direction: FlexDirection.column,
            justifyContent: JustifyContent.center,
            alignItems: AlignItems.center,
          ),
          Styles.background(
            color: color,
          )
        ]),
        children);
  }
}

class ImageSection extends StatelessComponent {
  final List<Component> children;
  final String src;
  final Unit height;
  const ImageSection(
    this.children, {
    required this.src,
    this.height = SECTION_HEIGHT,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles.combine([
          Styles.text(
            color: LIGHT,
          ),
          Styles.box(
            display: Display.flex,
            height: height,
            width: Unit.percent(100),
            padding: padding,
          ),
          Styles.flexbox(
            direction: FlexDirection.column,
            justifyContent: JustifyContent.center,
            alignItems: AlignItems.center,
          ),
          Styles.background(
            image: ImageStyle.url(src),
            color: DARK,
            repeat: BackgroundRepeat.noRepeat,
            size: BackgroundSize.cover,
            position: BackgroundPosition.center,
          )
        ]),
        children);
  }
}
