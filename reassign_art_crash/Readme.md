## ART crash when reassigning Symbol to String

This code in main_activity.rb causes an ART crash:

```
  sym = :thing
  sym = sym.to_s
```
