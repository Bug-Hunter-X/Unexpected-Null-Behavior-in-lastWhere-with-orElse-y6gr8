```dart
List<int> numbers = [1, 2, 3, 4, 5];
int? result = numbers.lastWhere((number) => number > 10, orElse: () => null);

int safeResult = result ?? -1; // Handle null explicitly
print(safeResult); // Prints -1
```