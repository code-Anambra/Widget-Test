ANYADIUFU STANLEY CHUKWUNONSO
SOLUTION TO EXAM 4

1.A Flutter widget can be defined as a self-contained, reusable piece of code that describes how part of the user interface should be displayed. Widgets can be thought of as Lego blocks, which can be combined and arranged in many different ways to create complex user interfaces.

2.	How can you create a button in Flutter?
ANS:	Open the main. dart file and replace it with the below code.
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
home: MyApp(),
));
class MyApp extends StatefulWidget {
@override.
_MyAppState createState() => _MyAppState();
}

3. What is the purpose of the Scaffold widget in Flutter?
ANS:  Purpose of scaffold widget in flutter is to provides a framework which implements the basic material design visual layout structure of the flutter app. It provides APIs for showing drawers, snack bars and bottom sheets.

4. How can you add padding to a widget in Flutter?
ANS: if you want to add padding to a container widget, you would have to "wrap" the entire container with a new Padding widget. In this code, you create a Container widget that comprises a Text widget: "Sample Text". Here, the Padding Widget wraps the Container widget and provides padding on all sides.

5. What is the difference between mainAxisAlignment and crossAxisAlignment in a Row or Column widget?
ANS:  The MainAxisAlignment and CrossAxisAlignment properties are used in Flutter to position widgets within a container. The MainAxisAlignment property controls the vertical alignment of widgets within a container, while the CrossAxisAlignment property controls the horizontal alignment.

6. How can you add a border to a container widget in Flutter?
ANS:  You want to add border to a container, you need to wrap a widget in a container and add BoxDecoration class to it as in the code below.

Container(
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    border: Border.all(
      width: 5,
      color: Colors.black,
    ),
  ),
),


7. How do you create a text input field in Flutter?
ANS:In Flutter, this can be done using TextEditingController . First, create a TextEditingController and set it as a controller property of your TextField widget. Text fields allow users to type text into an app. They are used to build forms, send messages, create search experiences, and more. 

8.Explain the difference between Stateful and Stateless widgets in Flutter.
ANS: A widget is either stateful or stateless. If a widget can change—when a user interacts with it, for example—it's stateful. A stateless widget never changes. Icon , IconButton , and Text are examples of stateless widgets.

9.How can you add a gradient background to a widget in Flutter?
ANS: you first need a Container widget, and within that you need to access its decoration property. Start by building the decoration of the Container widget in your _MyHomePageState build method in main. dart .

10. What is the purpose of the ListView widget in Flutter?
ANS: ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView. If non-null, the itemExtent forces the children to have the given extent in the scroll direction.

11. How can you display images in Flutter?
ANS: To display an image in Flutter, do the following steps:
Step 1: First, we need to create a new folder inside the root of the Flutter project and named it assets. ...
Step 2: Next, inside this folder, add one image manually.
Step 3: Update the pubspec. ...
Step 4: Finally, open themain. ...
Step 5: Now, run the app. ...
Output.
Output.


12. What is the purpose of the Expanded widget in Flutter?
ANS:  Expanded widget in flutter comes in handy when we want a child widget or children widgets to take all the available space along the main-axis (for Row the main axis is horizontal & vertical for Column).

13. How can you navigate between screens in Flutter?
ANS:  Navigate back to Home Screen
To navigate back to previous screen, use the Navigator.pop() method. This pop() method removes the current route from the stack of routes managed by Navigator.

	Navigate to Detail Screen
To navigate from HomePage screen to DetailPage screen, use the Navigator.push() method. This push() method allows us to adds a Route in stack of routes managed by the Navigator. One way of navigating to other screen is MaterialPageRoute, which is useful because it transitions to the new route using a platform-specific animation.


14.	What is the purpose of the SingleChildScrollView widget in Flutter?
ANS:  The SingleChildScrollView widget is a flexible and essential component in the Flutter widget library. It provides a simple way to create scrollable areas for content that exceeds the screen size, ensuring that all content remains accessible and visible.


15. How can you add icons to your Flutter app?

ANS:   To use custom icons, you first need to add the icon images to your project. The images should be added to the assets folder in your project's root directory. You then need to declare the assets in the pubspec. yaml file so that Flutter knows where to find them.


16. Explain the concept of widget composition in Flutter.
ANS:	 Understanding the Fundamentals of Widget Composition in Flutter. Widgets form the backbone of any application built in Flutter. Think of them as a blueprint for a UI element. Each widget handles a specific task and comes with its own properties you can customize.


17.	How can you create a custom widget in Flutter?
ANS:	How You can create your very own customized widget in Flutter, make a new project or open an existing one and import all the necessary packages in your dart file. After that, choose whether you want a stateless widget or a stateful widget.

18.	What is the purpose of the MediaQuery widget in Flutter?
ANS:	The MediaQuery class in Flutter is a crucial tool for creating responsive layouts. It provides access to the media query data from the BuildContext context. This data is used to determine the physical characteristics of the device's screen size, such as screen width, screen height, device pixel ratio, and more.

19.	How can you create a dropdown menu in Flutter?
ANS:	STEPS FOR CREATING A DROPDOWN MENU IN FLUTTERAfter getting a handle on what dropdowns offer, let's create our first Flutter dropdown menu. Are you ready? Let's dive in!

Setting up the Flutter environment
Start by setting up your Flutter environment if you still need to do that. Flutter provides detailed instructions for installing Flutter and getting everything on your machine.

With your environment ready, create a new project by running the command flutter create flutter_dropdown on your terminal and then navigate into the project directory.

Coding the Flutter dropdown menu
Now, it's time to code! Dive into the lib/main.dart file of your Flutter project, and let's build our first dropdown menu.

First, we must define a stateful widget as our dropdown menu will change its state based on the user's selection. The widget's build method is where our dropdown finds its proper form.

We define a DropdownButton widget that takes a list of DropdownMenuItem widgets to form the actual dropdown menu. Each DropdownMenuItem needs a value and a child attribute, where the child gets displayed to the user in the dropdown, and the value is what's assigned to the dropdown when this item is selected.

We will also need a selectedValue synced with the dropdown to display the currently selected item. Every time the user selects an item, you will update selectedValue, which triggers a rebuild of the widget.


20.	Explain how to handle user input using GestureDetector in Flutter.
ANS:	In Flutter, the GestureDetector widget allows you to handle various user gestures, such as taps, long presses, drags, and more. Here's a basic example demonstrating how to handle user input using GestureDetector:

dart
Copy code
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GestureDetector Example'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              // Handle tap gesture
              print('Tapped');
            },
            onDoubleTap: () {
              // Handle double tap gesture
              print('Double Tapped');
            },
            onLongPress: () {
              // Handle long press gesture
              print('Long Pressed');
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Tap Me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
In this example, we use the GestureDetector widget as the parent, and we provide callback functions like onTap, onDoubleTap, and onLongPress to handle different types of gestures. These callbacks are triggered when the user interacts with the child widget inside the GestureDetector.

Remember that GestureDetector can be used with various gestures, and you can customize its behavior to fit your specific use case. Additionally, you can use properties like onVerticalDragDown, onScaleUpdate, etc., for more advanced gesture handling.