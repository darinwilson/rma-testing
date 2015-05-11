## inheritance_activity

This is a variation of the problem demonstrated in the [inheritance](https://github.com/darinwilson/rma-testing/tree/master/inheritance) project in this repo. In this case, we simply try to create a class within a module that is a subclass of `Android::App::Activity.`

```ruby
module MyModule; end

class MyModule::MyActivity < Android::App::Activity

  def onCreate(savedInstanceState)
    super
    puts "in super class"
  end

  def hello
    puts "hello!"
    raise "this is never called"
  end

end
```

We then try to make `MainActivity` a subclass of this class:

```ruby
class MainActivity < MyModule::MyActivity
  def onCreate(savedInstanceState)
    super
    hello()
  end
end
```

This causes two problems:

1) The presence of `onCreate` in `MyModule::MyActivity` causes a compile-time error:

```shell
--------- beginning of crash
E/AndroidRuntime( 5239): FATAL EXCEPTION: main
E/AndroidRuntime( 5239): Process: com.yourcompany.inheritance_activity, PID: 5239
E/AndroidRuntime( 5239): java.lang.UnsatisfiedLinkError: No implementation found for void com.yourcompany.inheritance_activity.MyModule_MyActivity.onCreate(android.os.Bundle) (tried Java_com_yourcompany_inheritance_1activity_MyModule_1MyActivity_onCreate and Java_com_yourcompany_inheritance_1activity_MyModule_1MyActivity_onCreate__Landroid_os_Bundle_2)
```

2) If we remove `onCreate`, the app executes but the call to `hello` from `MainActivity` does not execute, nor does it raise an error.


