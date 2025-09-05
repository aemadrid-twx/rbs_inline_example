# rbs_inline_example

Example to test prototyping RBS fils using inline documentation.

I expect that this `calculator.rb` file:

```ruby
class Calculator
  # @rbs (Integer, Integer) -> Integer
  def add(a, b)
    a + b
  end
end
```

And after running this command:

```shell
bin/rbs prototype rb lib/calculator.rb > sig/lib/calculator.rbs
```

Would produce this `sig/lib/calculator.rbs` file:

```ruby.rbs
class Calculator
  def add: (Integer a, Integer b) -> Integer
end
```

But at the moment, it produces this:
```ruby.rbs
class Calculator
  # @rbs (Integer, Integer) -> Integer
  def add: (untyped a, untyped b) -> untyped
end
```

All this with the current specs:

```shell
❯ ruby --version
ruby 3.2.7 (2025-02-04 revision 02ec315244) [arm64-darwin23]
❯ bundle info rbs
  * rbs (4.0.0.dev.4 8a97819)
	Summary: Type signature for Ruby.
	Homepage: https://github.com/ruby/rbs
	Source Code: https://github.com/ruby/rbs.git
	Changelog: https://github.com/ruby/rbs/blob/master/CHANGELOG.md
	Path: /Users/aemadrid/.local/share/mise/installs/ruby/3.2.7/lib/ruby/gems/3.2.0/bundler/gems/rbs-8a97819d4419
```

## rbs-inline attempt

I also tried using the `rbs-inline` gem, but it doesn't seem to work either.

```shell
❯ bin/rbs-inline --base lib --output sig/generated --verbose
D, [2025-09-05T11:27:57.325793 #85649] DEBUG -- : base_paths = lib, output_path = sig/generated
🎉 Generated 0 RBS files under sig/generated
```