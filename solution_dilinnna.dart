Name: OKOYE DANIEL DILINNA
Tag No: 39
course: Mobile Application Development

/* 1 What is a widget in Flutter?

Widget is the basic building block of Flutter UI, which represents a particular element in the user interface, such as a button, label, or text input field. Widgets can be composed and combined in various ways to create complex and interactive user interfaces. Flutter has a rich set of pre-built widgets that are optimized for mobile and web platforms and offer various customization options to match the design requirements. Additionally, with Flutter's powerful framework, developers can create their custom widgets that suit their specific needs and reuse them across different screens and applications.
*/
// example of widget

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget by David',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget by David'),
      ),
      body: Center(
        child: Text(
          'This is an example of widget!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

/*
The code is creating a simple Flutter app with a home page that displays the text "This is an example of widget!".
It starts by importing the necessary Flutter packages. The main function kicks off the app by calling runApp and passing in the MyApp widget.
MyApp is a StatelessWidget that acts as the root of the app. It builds a MaterialApp, which defines app-wide properties like the title, theme, and home route. The home route points to the MyHomePage widget.
MyHomePage is also a StatelessWidget. It builds a Scaffold, which provides the basic material design visual structure. The Scaffold contains an AppBar at the top with the title "Flutter Widget by David".
The main body of the Scaffold uses a Center widget to vertically center its child widget. The child is a Text widget displaying the string "Hello, Flutter!". Some basic text styling is also applied.
*/

/*

2.How can you create a button in Flutter?

In Flutter, you can use different widgets to create buttons based on the style and behavior you want. 
Here are a few examples:

i.Text Button: A simple button with text. It's typically used for less important actions.
ii.Elevated Button: A raised button that indicates primary action in an app.
iii.Outlined Button: A button with an outline. It's often used for secondary actions.
iv.IconButton: A button with an icon.

// Example of ElevatedButton */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Text Button Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void onPressed() {
    print('Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Text Button Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text('Press Me'),
        ),
      ),
    );
  }
}

/* this code is creating a simple Flutter app with a Material design theme and home screen containing a centered ElevatedButton button. 
When the button is pressed, it will call the onPressed method and print a message to the console.*/

/*

3.What is the purpose of the Scaffold widget in Flutter?

The purpose of the Scaffold widget in Flutter is to provide a framework for building the basic structure of a material design app. It includes features such as an app bar, a floating action button, a drawer, and a bottom navigation bar. The Scaffold widget acts as a container for the main content of the app and provides a consistent layout and navigation structure for the app's UI.

*/

/*

4. How can you add padding to a widget in Flutter?

In Flutter, padding is the term used to describe the space between the edges of a widget and its content. It is a way to create space around the content within a widget. Padding can be added to any widget using the Padding widget. This allows for better control over the layout and spacing of elements within the user interface.

To add padding to a widget in my own experience, below is the steps I followed;
I.Place your cursor on the widget you want to add padding
II.Now, call up the Refactor menu in vscode by Right click the piece of code you want to refactor (Text or anything) and select Refactor... from the drop-down menu,
III.In the Refactor menu, select Extract Widget. Assign a name, any desired name your choice, and click Enter.
IV.This automatically creates a new class, Your desired name, at the end of the current file.
NB: Notice how the app keeps working even through this refactoring.
V.Find the your desired name class and the build() method within it. 
VI.As before, call up the Refactor menu on the Text widget. However, this time you aren't going to extract the widget.
VII.Instead, select Wrap with Padding. This creates a new parent widget around the Text widget called Padding. After saving, you'll see that the widget you added padding already has more breathing room.
You can adjust your padded widget to your desired width or height to increase its size.

5.What is the difference between mainAxisAlignment and crossAxisAlignment in a Row or Column widget?
In a Row or Column widget, the mainAxisAlignment is used to align the children along the main axis (horizontal for Row and vertical for Column), while the crossAxisAlignment is used to align the children along the cross axis (vertical for Row and horizontal for Column). Therefore, the main difference is that mainAxisAlignment controls the alignment of the children in the direction of the main axis, while crossAxisAlignment controls the alignment in the direction of the cross axis.
*/
/*
6.How can you add a border to a container widget in Flutter?

To add a border to a Container widget in Flutter, you can use the decoration property and provide a BoxDecoration with a border. Here's an example:
*/
Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2.0,
    ),
  ),
  child: YourChildWidget(),
)

/*
7.How do you create a text input field in Flutter?


To create a text input field in Flutter, you can use the TextField widget. 
Here's an example: */

TextField(
  decoration: InputDecoration(
    labelText: 'Enter your text',
  ),
)

/*
8.Explain the difference between Stateful and Stateless widgets in Flutter.
Stateful widgets maintain state that might change during the lifetime of the widget, while stateless widgets are immutable and their state cannot change once they are built. Stateful widgets use a State object to manage the state, allowing the widget to rebuild when the state changes.

9.How can you add a gradient background to a widget in Flutter?
To add a gradient background to a widget in Flutter, you can use the BoxDecoration property of the Container widget. Here's an example: */
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: YourChildWidget(),
)

/*
10. What is the purpose of the ListView widget in Flutter?

The purpose of the ListView widget in Flutter is to create a scrollable list of widgets. It allows you to display a large number of children that would not otherwise fit on the screen.

11.How can you display images in Flutter?
To display images in Flutter, you can use the Image widget. Here's an example: */
Image.network('https://example.com/image.jpg')

/*
12.What is the purpose of the Expanded widget in Flutter?
The purpose of the Expanded widget in Flutter is to allow a child widget of a Row, Column, or Flex to expand to fill the available space along the main axis.

13.How can you navigate between screens in Flutter?
You can navigate between screens in Flutter using the Navigator class. You push a new route onto the navigator's stack to navigate to a new screen, and you pop the top route off the stack to go back.

14.What is the purpose of the SingleChildScrollView widget in Flutter?
The purpose of the SingleChildScrollView widget in Flutter is to make its child scrollable if it exceeds the size of its viewport.

15.How can you add icons to your Flutter app?
You can add icons to your Flutter app using the Icon widget. Flutter provides a variety of built-in icons, and you can also use custom icons.

16.Explain the concept of widget composition in Flutter.
Widget composition in Flutter refers to the practice of combining multiple smaller widgets to create more complex UIs. This allows you to build UIs by composing widgets together in a hierarchical manner.

17.How can you create a custom widget in Flutter?
ou can create a custom widget in Flutter by extending either the StatelessWidget or StatefulWidget class and implementing the build method.

18.What is the purpose of the MediaQuery widget in Flutter?
The purpose of the MediaQuery widget in Flutter is to retrieve information about the current app's MediaQuery, such as screen size, orientation, and device pixel density.

19.How can you create a dropdown menu in Flutter?
To create a dropdown menu in Flutter, you can use the DropdownButton widget along with the DropdownMenuItem widget.

20.Explain how to handle user input using GestureDetector in Flutter.
You can handle user input using GestureDetector in Flutter by wrapping your widgets with it and specifying the gesture you want to detect, such as onTap, onLongPress, onDoubleTap, etc.
*/