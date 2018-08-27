require './somethings'
require './somethings_iterator'

samples = Somethings.new

samples.append('1')
samples.append('2')
samples.append('3')
samples.append('4')


iterator = samples.iterator

while(iterator.has_next) do
  puts iterator.next
end


samples = SomethingsForMixin.new

samples.append('a')
samples.append('b')
samples.append('c')
samples.append('d')

samples.each {|sample| puts sample}



