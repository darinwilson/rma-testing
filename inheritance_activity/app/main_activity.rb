module MyModule
  class MyActivity < Android::App::Activity
  end
end

class MainActivity < MyModule::MyActivity
  def onCreate(savedInstanceState)
    super
  end

end
