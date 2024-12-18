# flex_responsive

A powerful yet simple Flutter package for creating responsive layouts across mobile, tablet, and desktop platforms with minimal code.

## Features 🚀

- **Simple Screen Detection**

  - Easy mobile/tablet/desktop checks
  - Automatic breakpoint handling
  - Screen size utilities

- **Responsive Layout**

  - Different layouts per screen size
  - Smooth transitions between layouts
  - Automatic content adjustment

- **Responsive Grid**
  - Automatic column adjustment
  - Customizable spacing
  - Fluid item sizing

## Installation 📦

```yaml
dependencies:
  flex_responsive: ^0.0.1
```

## Usage 💻

### Basic Usage

Import the package:

```dart
import 'package:flex_responsive/flex_responsive.dart';
```

### 1. Responsive Layout

Create different layouts for different screen sizes:

```dart
FlexResponsiveLayout(
  // Mobile layout (required)
  mobile: SingleChildScrollView(
    child: Column(
      children: [
        Text('Mobile View'),
        // Your mobile content
      ],
    ),
  ),

  // Tablet layout (optional)
  tablet: Row(
    children: [
      Drawer(child: Text('Sidebar')),
      Expanded(
        child: Text('Tablet Content'),
      ),
    ],
  ),

  // Desktop layout (optional)
  desktop: Row(
    children: [
      Drawer(child: Text('Sidebar')),
      Expanded(
        child: Text('Desktop Content'),
      ),
    ],
  ),
)
```

### 2. Responsive Grid

Create grids that automatically adjust columns:

```dart
FlexResponsiveGrid(
  spacing: 16, // Optional spacing between items
  children: [
    Card(child: Text('Item 1')),
    Card(child: Text('Item 2')),
    Card(child: Text('Item 3')),
    // Add more items
  ],
)
```

### 3. Screen Size Detection

Check current screen size:

```dart
if (FlexResponsive.isMobile(context)) {
  // Mobile specific code
}

if (FlexResponsive.isTablet(context)) {
  // Tablet specific code
}

if (FlexResponsive.isDesktop(context)) {
  // Desktop specific code
}
```

## Complete Example 📱

Here's a complete example showing all features:

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Demo'),
      ),
      body: FlexResponsiveLayout(
        // Mobile Layout
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Mobile Dashboard'),
              FlexResponsiveGrid(
                children: _buildGridItems(),
              ),
            ],
          ),
        ),

        // Tablet Layout
        tablet: Row(
          children: [
            Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    child: Text('Menu'),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: FlexResponsiveGrid(
                children: _buildGridItems(),
              ),
            ),
          ],
        ),

        // Desktop Layout
        desktop: Row(
          children: [
            Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    child: Text('Menu'),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: FlexResponsiveGrid(
                children: _buildGridItems(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildGridItems() {
    return List.generate(
      6,
      (index) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(Icons.star),
              Text('Item ${index + 1}'),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Breakpoints 📏

Default breakpoints used:

- Mobile: < 600px
- Tablet: 600px - 1200px
- Desktop: >= 1200px

## Grid Columns 📊

Automatic column count:

- Mobile: 1 column
- Tablet: 2 columns
- Desktop: 4 columns

## Tips and Best Practices 💡

1. Always provide the mobile layout (it's required)
2. Test your layouts on different screen sizes
3. Use the grid spacing parameter for consistent spacing
4. Consider using FlexResponsive utility methods for custom widgets

## Troubleshooting 🔧

Common issues and solutions:

1. **Layout not changing with screen size**

   - Ensure MediaQuery is available in context
   - Check if parent widget constraints are correct

2. **Grid items not sizing correctly**
   - Verify children have proper constraints
   - Check spacing values

## Contributing 🤝

Contributions are welcome! Please feel free to submit a Pull Request.

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author ✍️

Muhammad Abid
