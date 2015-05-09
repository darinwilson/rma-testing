class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    p Moran.parse('{ foo: "bar" }')
  end
end
