## Inheritance

This project demonstrates a problem with inheriting a class that's part of a module.

### Details

Given this inheritance chain of three classes:

    MyModule::A
      B
        C

The compiler generates the following error when it tries to build:

```
./build/Development-21/java/com/yourcompany/inheritance/C.java:4: cannot find symbol
symbol: class B
public class C extends B {
                       ^
1 error
rake aborted!
```

The build generates a `.bc` file for class B, but the `.map` file has 0 bytes:

```
> ls -l `find . -name '*b.rb.o.bc'`
-rw-r--r--  1 darin  staff  18824 Apr  6 06:35 ./build/Development-21/obj/local/armeabi/Users/darin/work/ruby-motion/android/rma-testing/inheritance/app/b.rb.o.bc

> ls -l `find . -name '*b.rb.o.bc.map'`
-rw-r--r--  1 darin  staff  0 Apr  6 06:35 ./build/Development-21/obj/local/armeabi/Users/darin/work/ruby-motion/android/rma-testing/inheritance/app/b.rb.o.bc.map
```

