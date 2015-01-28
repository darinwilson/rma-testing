## Support Lib Conflict

If you are using Android's v4 support library, and you have a PORO in your project with an `update` method, the compiler reports a conflict with a class from the support library:

    ./build/Development-21/java/com/yourcompany/support_lib_conflict/MyClass.java:12: android.support.v4.app.ActivityOptionsCompatJB is not public in android.support.v4.app; cannot be accessed from outside package
            public native void update(android.support.v4.app.ActivityOptionsCompatJB arg0);
             
In this project, `app/my_class.rb` has the `update` method that causes the error.

