# flutter_firebase

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Special note
There is a configuration required in Xcode for this project to allow iOS 
 - ### Signing and Capabilities 
 - - needs Signing 
 - - Automatic manage signing checked on
 - - assign a "team"
 - - and value to Bundle Identifier {{com.something.something}}
 - - this is time sensitive and seems to expire quickly (in days... ?)
  

- ### creating collections
- - need to create a db to hold all the different collections
- - I set one up in test mode because I'm just testing this out...
- - go to Firestore Database => create database => select "test"
- - sets up a database where you can then push all the messages to