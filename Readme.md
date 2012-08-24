# A little repo creating a minimal example of jruby-head and simplecov not playing nicely
enough said...

# How to make this work
For me this worked after modifying the `rspec-expectations` gem.
Namely the file `lib/rspec/expectations/differ.rb` in line number 3 and uncomment/remove `require 'pp'`.

Otherwise you get something like this error:

    tobi@speedy ~/github/minimal_simplecov $ rspec
    /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/simplecov-0.6.4/lib/simplecov.rb:34 warning: tracing (e.g. set_trace_func) will not capture all events without --debug flag
    LoadError: load error: pp -- java.lang.ArrayIndexOutOfBoundsException: -1
                                   require at org/jruby/RubyKernel.java:1018
                                    (root) at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-expectations-2.11.2/lib/rspec/expectations/differ.rb:3
                                   require at org/jruby/RubyKernel.java:1018
                                    (root) at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-expectations-2.11.2/lib/rspec/expectations.rb:1
                                   require at org/jruby/RubyKernel.java:1018
                                    (root) at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-expectations-2.11.2/lib/rspec/expectations.rb:10
                                       map at org/jruby/RubyArray.java:2355
                                    (root) at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:1
                               expect_with at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:380
                               expect_with at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:375
                    expectation_frameworks at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:343
           configure_expectation_framework at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:773
      ensure_example_groups_are_configured at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/example_group.rb:266
                                 set_it_up at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/example_group.rb:280
                                  subclass at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/example_group.rb:237
                                  describe at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/example_group.rb:223
                                      load at org/jruby/RubyKernel.java:1044
                                  describe at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/dsl.rb:18
                                       map at org/jruby/RubyArray.java:2355
                                    (root) at /home/tobi/github/minimal_simplecov/spec/implementation_spec.rb:4
                                    (root) at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:1
                           load_spec_files at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:780
                           load_spec_files at /home/tobi/.rvm/gems/jruby-head@minimal_simplecov/gems/rspec-core-2.11.1/lib/rspec/core/configuration.rb:780
    Coverage report generated for RSpec to /home/tobi/github/minimal_simplecov/coverage. 1 / 1 LOC (100.0%) covered.

