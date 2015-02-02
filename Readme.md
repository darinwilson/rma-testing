## RubyMotion Android Tests

This is primarily used to create small repos that reproduce RubyMotion issues

### Repos with Outstanding Issues

* [breakbug](https://github.com/darinwilson/rma-testing/tree/master/breakbug) : the `break` statement is currently not implemented ([RMA-750](http://hipbyte.myjetbrains.com/youtrack/issue/RM-750))
* [gem_integration](https://github.com/darinwilson/rma-testing/tree/master/gem_integration) : gem specs that expose an Array of file paths are not handled correctly by the Android template code - [this pull request](https://github.com/HipByte/RubyMotion/pull/189) resolves this problem but reveals another: `module_function` and `define_module` have not been implemented ([RM-749](http://hipbyte.myjetbrains.com/youtrack/issue/RM-749))
* [hashbugs](https://github.com/darinwilson/rma-testing/tree/master/hashbugs) : most issues of [RM-725](http://hipbyte.myjetbrains.com/youtrack/issue/RM-725) are fixed but Hash still does not implement Enumerable (*update:* see [RMA-755](http://hipbyte.myjetbrains.com/youtrack/issue/RM-755) - it turns out Hash does implement Enumerable, but the Android implementation of Enumerable is missing many methods)
* [inheritance](https://github.com/darinwilson/rma-testing/tree/master/inheritance) : using multiple levels of inheritance breaks if one of the classes is part of module (support ticket filed, no bug in tracker yet)
* [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type) : the compiler does not always assign the correct return type in vendored JAR files : [RM-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724) 
* [longbuild](https://github.com/darinwilson/rma-testing/tree/master/longbuild) : calling constructors adds significantly to the build time - the more calls you have, the slower your build (support ticket filed, no bug in tracker yet)
* [stringbugs](https://github.com/darinwilson/rma-testing/tree/master/stringbugs) : demonstrates still outstanding issues with String - [RM-743](http://hipbyte.myjetbrains.com/youtrack/issue/RM-743) and [RM-752](http://hipbyte.myjetbrains.com/youtrack/issue/RM-752)
* [support_lib_conflict](https://github.com/darinwilson/rma-testing/tree/master/support_lib_conflict) : using a PORO with a method named `update` causes a compile error if you're using the v4 support library - [RMA-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724), same as [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type), described above 

### Repos with Fixed Issues 

* extra_packages_buildbug
* instance_eval_crash
