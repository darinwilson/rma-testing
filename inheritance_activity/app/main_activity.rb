module MyModule; end

class MainActivity < MyModule::MyActivity
  def onCreate(savedInstanceState)
    super
    hello()
  end
end
