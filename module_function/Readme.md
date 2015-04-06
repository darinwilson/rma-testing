## module_function

**UPDATE:** you can use `module_method` as a scope marker, but it won't yet take a symbol ([RM-835](http://hipbyte.myjetbrains.com/youtrack/issue/RM-835))

[RM-805](http://hipbyte.myjetbrains.com/youtrack/issue/RM-805) was marked as fixed in RubyMotion 3.7, but using `module_function` still raises an error:

```
Start com.yourcompany.module_function/.MainActivity
--------- beginning of main
--------- beginning of system
E/com/yourcompany/module_function(23059): Exception raised: RuntimeError: Not implemented yet.
E/com/yourcompany/module_function(23059): Uncaught exception when initializing `main_activity.rb.o' scope -- aborting
```     


