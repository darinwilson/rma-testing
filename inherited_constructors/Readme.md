## inherited_constructors

If a class has a constructor that takes one or more parameters, the constructor is not inherited by child classes:

```ruby
class Parent
  def initialize(message)
    puts message
  end
end

class Child < Parent
end
```

```ruby
c = Child.new("hello")
# => com.rubymotion.NoMethodError: undefined method `new' for Child:java.lang.Class
```
