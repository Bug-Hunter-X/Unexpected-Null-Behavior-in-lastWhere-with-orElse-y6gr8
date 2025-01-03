# Dart lastWhere orElse Unexpected Null Behavior

This example demonstrates a potential issue with the `lastWhere` method in Dart when combined with the `orElse` function that returns null.  The code intends to find the last number greater than 10 in a list.  If no such number exists, `orElse` should provide a default value; however, the implicit null handling doesn't trigger compiler warnings, leading to unexpected null behavior.

## Reproducing the Bug

1. Run the `bug.dart` file.
2. Observe that the output is `null`, despite the expectation that `orElse` would handle the case where no number is greater than 10.

## Solution

The solution addresses the issue by explicitly handling the potential `null` return value from `orElse`.

## Additional Notes

This highlights the importance of explicitly handling potential `null` values, even when using functions designed to provide defaults.  While Dart's null safety features are strong, they do not automatically handle all edge cases involving `null`.