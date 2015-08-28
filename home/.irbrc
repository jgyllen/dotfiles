ARGV.concat ["--readline"]

require 'irb/completion'
require 'irb/ext/save-history'
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000

require 'rubygems'
require 'awesome_print'
AwesomePrint.irb!

# http://ozmm.org/posts/time_in_irb.html
def time(times = 1)
  require 'benchmark'
  ret = nil
  Benchmark.bm { |x| x.report { times.times { ret = yield } } }
  ret
end

class Object
  # list object methods
  def local_methods(obj=self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  def ls(obj=self)
    width = `stty size 2>/dev/null`.split(/\s+/, 2).last.to_i
    width = 80 if width == 0
    local_methods(obj).each_slice(3) do |meths|
      pattern = "%-#{width / 3}s" * meths.length
      puts pattern % meths
    end
  end
end

# reload this .irbrc
def IRB.reload
  load __FILE__
end

# More info: http://linux.die.net/man/1/irb
