import 'package:fsspcamps/header.dart';
import 'package:fsspcamps/styles.dart';
import 'package:jaspr/html.dart';

// A simple [StatelessComponent] with a [build] method
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Header();

    yield ImageSection(
        height: Unit.pixels(550),
        src: "/assets/images/landing.jpg",
        [
          h1([
            Text("CAMP SAINT PETER"),
            br(),
            i([Text("England")])
          ])
        ]);
    yield Section(
        styles: Styles.text(color: LIGHT),
        [
          h2([Text("Applications 2023 are CLOSED")]),
          p([
            Text(
                "Applications for 2023 are now CLOSED please stand by for 2024.")
          ]),
        ],
        color: DARK);

    yield Section([
      ImageBlock(
        src: "/assets/images/boysRunning.jpg",
        title: "About Camp Saint Peter",
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
      ),
      ImageBlock(
        src: "/assets/images/girlsHike.jpg",
        title: "What They Learn",
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
        reversed: true,
      )
    ]);
  }
}

class ImageBlock extends StatelessComponent {
  final String src;
  final String title;
  final String text;
  final bool reversed;
  const ImageBlock(
      {required this.src,
      required this.title,
      required this.text,
      this.reversed = false});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var c = [
      img(
        src: src,
        classes: ["col-md-5"],
      ),
      div(classes: [
        "col-md-7"
      ], [
        h2([Text(title)]),
        p(
            styles: Styles.box(
                margin: EdgeInsets.symmetric(horizontal: Unit.pixels(40))),
            [
              Text(text),
            ]),
      ]),
    ];
    if (reversed) {
      c = c.reversed.toList();
    }
    yield Section([
      div(classes: ["row-md"], c)
    ]);
  }
}
