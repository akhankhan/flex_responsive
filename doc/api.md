# flex_responsive API Documentation

## Classes

### FlexResponsive

Static utility class for responsive layouts.

#### Methods

- `static bool isMobile(BuildContext context)`

  - Returns true if screen width < 600px
  - Example: `if (FlexResponsive.isMobile(context))`

- `static bool isTablet(BuildContext context)`

  - Returns true if screen width is between 600px and 1200px
  - Example: `if (FlexResponsive.isTablet(context))`

- `static bool isDesktop(BuildContext context)`

  - Returns true if screen width >= 1200px
  - Example: `if (FlexResponsive.isDesktop(context))`

- `static int cols(BuildContext context)`
  - Returns number of columns based on screen size
  - Mobile: 1 column
  - Tablet: 2 columns
  - Desktop: 4 columns

### FlexResponsiveLayout

Widget for creating responsive layouts.

#### Constructor

```dart
FlexResponsiveLayout({
  required Widget mobile,
  Widget? tablet,
  Widget? desktop,
})
```
