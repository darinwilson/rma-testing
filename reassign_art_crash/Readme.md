## ART crash when reassigning Symbol to String

This code in main_activity.rb causes an ART crash. Strangely, the same code works correctly in the REPL.

```
  sym = :thing
  sym = sym.to_s
```
