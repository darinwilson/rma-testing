## RubyMotion Android App with Gem Integration

This app demonstrates two problems with using 3rd party gems in a RubyMotion Android app:

* a bug in the Android template which causes an error at build time
* missing implementations of `Module#define_method` and `Module#module_method` which will likely cause many gems (notably motion_print, included here) not to compile

### Steps To Build

* install Bundler (if you haven't already)
* `bundle install`
* `rake device`

[This pull request]() will fix the first problem. Once you've integrated that, the second problem will appear
