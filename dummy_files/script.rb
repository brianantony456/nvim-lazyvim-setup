# Add frozen string literal: true


# https://www.reddit.com/r/ruby/comments/1ctwtrd/debugging_ruby_in_neovim/
require 'debug'
binding.b

require 'fileutils'
require 'json'



def add_numbers(a, b)
  c = a
  d = b
  c + d



end

def main
  'xxx'
end

if __FILE__ == $0
  puts main
  puts add_numbers(1, 2)
end
