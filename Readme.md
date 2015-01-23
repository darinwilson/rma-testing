## RubyMotion Android Tests

This is primarily used to create small repos that reproduce RubyMotion issues

### Repos with Outstanding Issues

* [breakbug](https://github.com/darinwilson/rma-testing/tree/master/breakbug) : the `break` statement is currently not implemented
* [gem_integration](https://github.com/darinwilson/rma-testing/tree/master/gem_integration) : gem specs that expose an Array of file paths are not handled correctly by the Android template code
* [jni_return_type](https://github.com/darinwilson/rma-testing/tree/master/jni_return_type) : [RM-724](http://hipbyte.myjetbrains.com/youtrack/issue/RM-724) 
* [hashbugs](https://github.com/darinwilson/rma-testing/tree/master/hashbugs) : most issues of [RM-725](http://hipbyte.myjetbrains.com/youtrack/issue/RM-725) are fixed but Hash still does not implement Enumerable
* [stringbugs](https://github.com/darinwilson/rma-testing/tree/master/stringbugs) : demonstrates still outstanding issues with [RM-722](http://hipbyte.myjetbrains.com/youtrack/issue/RM-722) and [RM-734](http://hipbyte.myjetbrains.com/youtrack/issue/RM-734)

### Repos with Fixed Issues 

* extra_packages_buildbug
* instance_eval_crash
