## inheritance_activity

This is a variation of the problem demonstrated in the [inheritance](https://github.com/darinwilson/rma-testing/tree/master/inheritance) project in this repo. In this case, we simply try to create a class within a module that is a subclass of `Android::App::Activity.` If you try to make `MainActivity` a subclass of that module class, you get the following Runtime error:

```
E/AndroidRuntime(30182): java.lang.RuntimeException: Unable to instantiate activity ComponentInfo{com.yourcompany.inheritance_activity/com.yourcompany.inheritance_activity.MainActivity}: java.lang.ClassNotFoundException: Didn't find class "com.yourcompany.inheritance_activity.MainActivity" on path: DexPathList[[zip file "/data/app/com.yourcompany.inheritance_activity-2/base.apk"],nativeLibraryDirectories=[/data/app/com.yourcompany.inheritance_activity-2/lib/arm, /vendor/lib, /system/lib]]
```
