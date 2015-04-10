## RubyMotion Android Tests

This is primarily used to create small repos that reproduce RubyMotion issues

### Repos with Outstanding Issues

* [inherited_constructors](https://github.com/darinwilson/rma-testing/tree/master/inherited_constructors) : Constructors that accept parameters are not inherited by subclasses (support request filed)
* [inheritance](https://github.com/darinwilson/rma-testing/tree/master/inheritance) : using multiple levels of inheritance breaks if one of the classes is part of module: [RM-773](http://hipbyte.myjetbrains.com/youtrack/issue/RM-773)
* [inheritance_activity](https://github.com/darinwilson/rma-testing/tree/master/inheritance_activity) : another project that demonstrates a variation of the inheritance problem [RM-773](http://hipbyte.myjetbrains.com/youtrack/issue/RM-773)
* [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type) : the compiler does not always assign the correct return type in vendored JAR files : [RM-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724) 
* [module_function](https://github.com/darinwilson/rma-testing/tree/master/module_function) : [RM-805](http://hipbyte.myjetbrains.com/youtrack/issue/RM-805) (`module_function` not implemented) is marked as fixed, but it currently raises an error: "RuntimeError: Not implemented yet." **UPDATE:** you can use `module_method` as a scope marker, but it won't yet take a symbol - [RM-835](http://hipbyte.myjetbrains.com/youtrack/issue/RM-835) should address that
* [reassign_art_crash](https://github.com/darinwilson/rma-testing/tree/master/reassign_art_crash) : converting a symbol to a string and reassigning to the same variable name causes an ART crash when run in an activity, but works correctly in the REPL (support request filed)
* [gem_integration](https://github.com/darinwilson/rma-testing/tree/master/gem_integration) : gem specs that expose an Array of file paths are not handled correctly by the Android template code - [this pull request](https://github.com/HipByte/RubyMotion/pull/189) resolves this problem but reveals another: `module_function` and `define_method` have not been implemented ([RM-805](http://hipbyte.myjetbrains.com/youtrack/issue/RM-805) and [RM-806](http://hipbyte.myjetbrains.com/youtrack/issue/RM-806))
* [hashbugs](https://github.com/darinwilson/rma-testing/tree/master/hashbugs) : most issues of [RM-725](http://hipbyte.myjetbrains.com/youtrack/issue/RM-725) are fixed but Hash still does not implement Enumerable (*update:* see [RMA-755](http://hipbyte.myjetbrains.com/youtrack/issue/RM-755) - it turns out Hash does implement Enumerable, but the Android implementation of Enumerable is missing many methods)
* [support_lib_conflict](https://github.com/darinwilson/rma-testing/tree/master/support_lib_conflict) : using a PORO with a method named `update` causes a compile error if you're using the v4 support library - [RMA-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724), same as [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type), described above 

### Repos with Fixed Issues 

* [extra_packages_buildbug](https://github.com/darinwilson/rma-testing/tree/master/_fixed/extra_packages_buildbug)
* [instance_eval_crash](https://github.com/darinwilson/rma-testing/tree/master/_fixed/instance_eval_crash)
* [breakbug](https://github.com/darinwilson/rma-testing/tree/master/_fixed/breakbug)
* [longbuild](https://github.com/darinwilson/rma-testing/tree/master/_fixed/longbuild)
* [stringbugs](https://github.com/darinwilson/rma-testing/tree/master/_fixed/stringbugs)
