## RMA Testing - Long Build

This project demonstrates that calling constructors significantly slows build time, particularly at this step of the process

    Create ./build/Development-21/lib/armeabi/libpayload.so

### Details

 The project contains one activity and a directory of 10 randomly-generated classes, each of which contains one method that does nothing but call `Hash.new`
```
class Fwaeqivn
  def fqmxlmxa
    Hash.new
  end
end
```
Run `rake build` and you'll see a significant pause when the build creates `libpayload.so`

Now run this sed script to change all the calls to `Hash.new` to `nil`

    sed -i "" 's/Hash\.new/nil/g' app/fake_classes/*.rb

Run `rake clean; rake build` and you'll see that the build time is significantly faster.
**Note:** the time spent at the `libpayload.so` step is the same every time - even a one-line change to the code causes the long build time.

