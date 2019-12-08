Small app for sorting people into teams written in Dart.
Original implementation at [ernestoittig/teams](https://github.com/ernestoittig/teams)

### Dart VM

To run the Dart Vm implementation:
```sh
pub get # Install all the dependencies if you haven't already
pub run teams_dart
```
You should include a list of all the people you want to sort into teams in the `people` file.
If you want, you can specify the number of teams as the first command-line argument.

To install the executable:
```
pub global activate --path .
```

Example output:
```
How many teams? 2
```
```dart
[[Ernesto Ittig], [Triana Macedo, Francesca Modena]]
```

### Web

You can test the web implementation:
```sh
pub global activate webdev # Activate webdev if you haven't already
webdev serve
```

To build the web implementation:
```sh
pub get # Install all the dependencies if you haven't already
pub global activate webdev # Activate webdev if you haven't already
webdev build
```

Now, the bundle should be in the `build` directory. You should be able to host this however you want, but
if you want to test it, you can open the `index.html` with your browser.
