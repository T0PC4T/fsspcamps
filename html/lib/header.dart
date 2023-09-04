import 'dart:html';

import 'package:fsspcamps/styles.dart';
import 'package:jaspr/html.dart';

// A simple [StatelessComponent] with a [build] method
class Header extends StatelessComponent {
  final sections = ["ABOUT", "GALLERY", "APPLY"];

  static const liStyles = Styles.combine([
    Styles.background(color: DARK),
    Styles.box(
        border: Border.only(
            bottom: BorderSide(
                color: SECONDARY,
                width: Unit.pixels(4),
                style: BorderStyle.groove)))
  ]);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // renders a <p> element with 'Hello World' content
    yield header([
      nav([
        ul([
          li(id: "apply-btn", styles: liStyles, classes: [
            "header-section"
          ], [
            div(
              classes: ["logo"],
              [
                Text("FSSP"),
                img(
                    src: "/webassets/images/logo.png",
                    styles: Styles.box(
                      display: Display.inlineBlock,
                      width: Unit.pixels(45),
                      height: Unit.pixels(50),
                    )),
                Text("CAMPS"),
              ],
            ),
            div(
              events: {
                "click": (event) {
                  querySelector("nav")?.classes.toggle("navopened");
                }
              },
              classes: ["menu"],
              [
                for (var i = 0; i < 3; i++) div([]),
              ],
            ),
          ]),
          for (var sec in sections)
            li(styles: liStyles, [
              Text(sec),
            ])
        ])
      ])
    ]);
  }
}
