## gem_dependencies

This project shows that if your project requires a gem that in turn requires another gem, the second gem is not pulled into the project correctly.

### Quick Overview

This project requires PackingPeanut, which itself requires Moran.

```
bundle install
rake gradle:install
rake device
```

produces:

```
E/AndroidRuntime(23148): java.lang.RuntimeException: Unable to start activity 
ComponentInfo{com.yourcompany.gem_dependencies/com.yourcompany.gem_dependencies.MainActivity}: 
com.rubymotion.NameError: uninitialized constant `Moran'
```

Adding moran to the `Gemfile` of this project resolves the issue.

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

`rake gradle:install` appears to do the right thing, but during the build stage, I'm not prompted to replace the `META-INF/LICENSE` file, which is what usually happens when building a project with Gradle dependencies from a clean state.

When the app runs, it crashes with a `NameError`

```
E/AndroidRuntime(23148): java.lang.RuntimeException: Unable to start activity 
ComponentInfo{com.yourcompany.gem_dependencies/com.yourcompany.gem_dependencies.MainActivity}: 
com.rubymotion.NameError: uninitialized constant `Moran'
```

#### Workaround

If I add moran to this project's `Gemfile`, the project can use moran without errors.

