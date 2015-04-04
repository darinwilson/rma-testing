module MyModule
  def foo
    "bar"
  end
  module_function :foo
end

class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    puts MyModule.foo
  end
end
