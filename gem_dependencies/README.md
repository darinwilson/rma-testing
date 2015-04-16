## gem_dependencies

This project shows that if your project requires a gem that in turn requires another gem, the second gem is not pulled into the project correctly.

### Details

This project has a single gem in the Gemfile:

```ruby
gem "PackingPeanut", :git => "https://github.com/GantMan/PackingPeanut.git", :branch => "moran_json"
```

The PackingPeanut gem has a dependency on [moran](https://github.com/darinwilson/moran) in its .gemspec file:

```ruby
spec.add_dependency "moran"
```

Running `bundle:install` produces the expected result:

```shell
Fetching https://github.com/GantMan/PackingPeanut.git
Fetching gem metadata from https://rubygems.org/...
Fetching version metadata from https://rubygems.org/..
Resolving dependencies...
Installing rake 10.4.2
Installing motion-gradle 1.0.3
Installing moran 0.0.1
Using PackingPeanut 0.1.0 from https://github.com/GantMan/PackingPeanut.git (at moran_json)
Using bundler 1.9.4
Bundle complete! 2 Gemfile dependencies, 5 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
```

Based on PackingPeanut's gemspec, bundler pulls in moran, as well as motion-gradle which is a dependency declared by moran.

So far, so good. 

#### Problem 1

The `rake` tasks from `motion-gradle` are not available in this project:

```shell
rake build             # Create an application package file (.apk)
rake clean             # Clear local build objects
rake clean:all         # Clean all build objects
rake config            # Show project config
rake ctags             # Generate ctags
rake default           # Same as 'rake emulator'
rake device            # Build the app then run it in the device
rake device:install    # Install the app in the device
rake device:start      # Start the app's main intent in the device
rake emulator          # Build the app then run it in the emulator
rake emulator:install  # Install the app in the emulator
rake emulator:start    # Start the app's main intent in the emulator
rake release           # Create an application package file (.apk) for release (Goog...
rake spec              # Same as 'spec:emulator'
rake spec:device       # Run the test/spec suite on the device
rake spec:emulator     # Run the test/spec suite on the emulator
```

We would expect to see `rake gradle:install` in the list, and it's actually necessary for moran to work correctly.

(This might be a bug with motion-gradle, so I'll post an issue to that repo as well)

#### Problem 2

The classes defined in moran are not available to the project, even though bundler imported them:

```ruby
>> Moran.parse('{ foo: "bar" }')
=> <NameError: uninitialized constant `Moran'>
```

#### Workaround

If I add moran to this project's `Gemfile`, the motion-gradle rake task appears, and the project can use moran without errors.



