## RubyMotion Android Tests

This is primarily used to create small repos that reproduce RubyMotion issues

### Repos with Outstanding Issues

| Repo | Description | RM Bug |
| --- | --- | --- |
| [round_rect_crash](https://github.com/darinwilson/rma-testing/tree/master/round_rect_crash) | Creating an Android RoundRect with Ruby causes an ART crash | support request filed |
| [gem_dependencies](https://github.com/darinwilson/rma-testing/tree/master/gem_dependencies) | When using a gem that depends on another gem, the second gem is not correctly pulled into the project | support request filed |
| [inheritance](https://github.com/darinwilson/rma-testing/tree/master/inheritance) | using multiple levels of inheritance breaks if one of the classes is part of module | [RM-773](http://hipbyte.myjetbrains.com/youtrack/issue/RM-773) |                                                                                                 
| [inheritance_activity](https://github.com/darinwilson/rma-testing/tree/master/inheritance_activity) | another project that demonstrates a variation of the inheritance problem | [RM-773](http://hipbyte.myjetbrains.com/youtrack/issue/RM-773) |
| [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type) | the compiler does not always assign the correct return type in vendored JAR files | [RM-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724)  | 
| [module_function](https://github.com/darinwilson/rma-testing/tree/master/module_function) | `module_function` can be used as a scope marker, but it won't take a symbol argument |  [RM-835](http://hipbyte.myjetbrains.com/youtrack/issue/RM-835) |
| [hashbugs](https://github.com/darinwilson/rma-testing/tree/master/hashbugs) | `Enumerable` is missing many methods | [RMA-755](http://hipbyte.myjetbrains.com/youtrack/issue/RM-755) |
| [support_lib_conflict](https://github.com/darinwilson/rma-testing/tree/master/support_lib_conflict) | Using a PORO with a method named `update` causes a compile error if you're using the v4 support library | [RMA-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724), same as [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type), described above |

### Repos with Fixed Issues 

* [extra_packages_buildbug](https://github.com/darinwilson/rma-testing/tree/master/_fixed/extra_packages_buildbug)
* [instance_eval_crash](https://github.com/darinwilson/rma-testing/tree/master/_fixed/instance_eval_crash)
* [breakbug](https://github.com/darinwilson/rma-testing/tree/master/_fixed/breakbug)
* [longbuild](https://github.com/darinwilson/rma-testing/tree/master/_fixed/longbuild)
* [stringbugs](https://github.com/darinwilson/rma-testing/tree/master/_fixed/stringbugs)
* [gem_integration](https://github.com/darinwilson/rma-testing/tree/master/gem_integration) : gem specs that expose an Array of file paths are not handled correctly by the Android template code - [this pull request](https://github.com/HipByte/RubyMotion/pull/189) resolves this problem but reveals another: `module_function` and `define_method` have not been implemented ([RM-805](http://hipbyte.myjetbrains.com/youtrack/issue/RM-805) and [RM-806](http://hipbyte.myjetbrains.com/youtrack/issue/RM-806))
* [save_instance](https://github.com/darinwilson/rma-testing/tree/master/save_instance) : Calling the base class version of `Fragment#onSaveInstanceState` causes a `NoMethodError` ([RM-855](http://hipbyte.myjetbrains.com/youtrack/issue/RM-855))
* [inherited_constructors](https://github.com/darinwilson/rma-testing/tree/master/inherited_constructors) : Constructors that accept parameters are not inherited by subclasses [RM-844](http://hipbyte.myjetbrains.com/youtrack/issue/RM-844)
* [reassign_art_crash](https://github.com/darinwilson/rma-testing/tree/master/reassign_art_crash) : converting a symbol to a string and reassigning to the same variable name causes an ART crash when run in an activity, but works correctly in the REPL ([RM-855](http://hipbyte.myjetbrains.com/youtrack/issue/RM-855))
