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
