### round_rect_crash

Creating an Android RoundRect in Ruby causes an ART crash - the identical code works with a Java extension

```shell
...
F/art     ( 1607): art/runtime/check_jni.cc:65] JNI DETECTED ERROR IN APPLICATION: native code passing in reference to invalid stack indirect reference table or invalid reference: 0x4
F/art     ( 1607): art/runtime/check_jni.cc:65]     in call to GetObjectClass
F/art     ( 1607): art/runtime/check_jni.cc:65]     from void com.yourcompany.round_rect_crash.MainActivity.onCreate(android.os.Bundle)
F/art     ( 1607): art/runtime/check_jni.cc:65] "main" prio=5 tid=1 Runnable
F/art     ( 1607): art/runtime/check_jni.cc:65]   | group="main" sCount=0 dsCount=0 obj=0x73cfa000 self=0xb4025800
F/art     ( 1607): art/runtime/check_jni.cc:65]   | sysTid=1607 nice=0 cgrp=default sched=0/0 handle=0xb7761ea0
F/art     ( 1607): art/runtime/check_jni.cc:65]   | state=R schedstat=( 56266698 3629363 61 ) utm=4 stm=1 core=3 HZ=100
F/art     ( 1607): art/runtime/check_jni.cc:65]   | stack=0xbf139000-0xbf13b000 stackSize=8MB
F/art     ( 1607): art/runtime/check_jni.cc:65]   | held mutexes= "mutator lock"(shared held)
...
```

[Full output of crash](https://gist.github.com/darinwilson/a050c03acce17c5afb50)

Ruby code:

```ruby
  def create_round_rect_with_ruby
    radii = [5.0, 5.0, 5.0, 5.0, 5.0, 5.0, 5.0, 5.0]
    shape = Android::Graphics::Drawable::Shapes::RoundRectShape.new(radii, nil, nil)
  end
```

Java code:

```java
  public android.graphics.drawable.shapes.RoundRectShape createRoundRectWithJava() {
    return new android.graphics.drawable.shapes.RoundRectShape(new float[]{5f, 5f,
      5f, 5f, 5f, 5f, 5f, 5f}, null, null);
  }
```

In this project, `create_round_rect_with_ruby` is defined in `main_activity.rb` and `createRoundRectWithJava` is defined in the Java extension `main_activity.java`

