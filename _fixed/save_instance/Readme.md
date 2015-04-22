## save_instance

Calling the base class version of `onSaveInstanceState` for a fragment generates a `NoMethodError`

```ruby
class MainFragment < Android::App::Fragment

  ... 

  def onSaveInstanceState(outState)
    super # <- this causes the error
    puts "Fragment: onSaveInstanceState"
  end

end
```

The same method is implemented in `Activity`, and that works correctly – it's only in fragments that it's broken.

To reproduce:
   * build the project and run on device
   * rotate the device
   * a `NoMethodError` will appear in the console

**This is a critical issue:** `onSaveInstanceState` is one the of key ways to preserve UI state across rotation changes, app going into the background, etc. 

