Repository for http://www.fsspcamps.co.uk

[HTML CSS]

Website is build mainly with simple html css using dart-js.

[DART & FLUTTER]

There are some prebuilt function in dart to make the html-css writing experience easier.

Parts of the website are built in dart-flutter for better user experience.

To get started you will need to download dart (https://dart.dev/) and webdev (https://dart.dev/tools/webdev).

Once you have set up the environment you can run 'webdev serve' and then go to localhost:8080 to view.

To build the project run: 'webdev build -r -n sound'.

[FIREBASE]

This project was architected to run in the firebase backend as a service model.

To work with firebase you will need to install the CLI (https://firebase.google.com/docs/cli).

run 'firebase deploy' in the directory to deploy; see documentation for more information (https://firebase.google.com/docs).

[FIREBASE SERVICES]

To manage the services used in this project go to: https://console.firebase.google.com/u/0/project/fsspolgs/overview

This project uses:

HOSTING: to statically host the files. This functions equivalent to 'python -m http.server 80' (you can test the build by running this in the build directory).
FIRESTORE: to store the data for the website. dynamic data fetching is done purely at the front end via dart functions.
FUNCTIONS: to manage more complicated server side logic (this is done in Typescript).
STORAGE: to store files for the gallery and events.