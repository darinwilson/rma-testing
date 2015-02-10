class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    
    my_java_string = Java::Lang::String.new("my java string")
    my_ruby_string = "my ruby string"
    puts "java getBytes()"
    my_java_string.getBytes()
    # Is this supposed to work with a Ruby string?
    #puts "Ruby getBytes()"
    #my_ruby_string.getBytes()


    # http://hipbyte.myjetbrains.com/youtrack/issue/RM-752
    # only the [Fixnum,Fixnum] form of the [] operator is implemented
    s = "hello"
    s[0,1]   # works
    s[0..3]  # breaks
    s["el"]  # breaks
    s[/el/]  # breaks
  end
end
