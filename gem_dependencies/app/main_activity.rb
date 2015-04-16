class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    Moran.parse('{ foo: "bar" }')
  end
end
