# Flutter Common

In this project I keep the list of most libraries and helper classes that I commonly use during the development of my Flutter apps. I will try to keep this project updated constantly as I find better libraries to do the tasks or when I improve code in one of my classes.

## 🏛️ Architecture

This project uses of the [MVVM](https://en.wikipedia.org/wiki/Model–view–viewmodel) pattern and makes de binding between the Views and the ViewModels using [GetX](https://pub.dev/packages/get).

## ⚙️ Dependencies

I used a set of well-known Android libraries so we don't have to reinvent the wheel 🙃

* __GetX:__ for global state management.

## 🛠️ Build

Before building the project you must use code generator to update the Swift code with the GraphQL schema:

1. Download the [CLI tool](https://github.com/apollographql/apollo-ios/releases) and move it to `usr/local/bin`.
2. Run this command in the project root folder:

```
$ apollo-ios-cli generate
```

## 🎨 Code Correctness

This project uses Flutter/Dart's linting and format rules to follow best practices. You can check the linting by running the code below in the project's root folder:

```
$ flutter analyze .
```

And the formatting can be done with the following command:

```
$ dart format .
```

## 🕵️ Disable Analytics

Google shady practices of collecting analytics without previous user consent is not only illegal in the EU, but also breaks your development environment if you are using proxy ad-blocks like Diversion. To prevent this disable the analytics spyware:

```
$ flutter config --no-analytics && dart --disable-analytics
```

## 👨🏾‍💻 Author

Vinicius Egidio ([vinicius.io](http://vinicius.io))