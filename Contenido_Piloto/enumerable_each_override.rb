class Rainbow
	include Enumerable
	def each
		yield "red"
		yield "orange"
		yield "yellow"
		yield "green"
		yield "blue"
		yield "indigo"
		yield "violet"
	end
end

r = Rainbow.new
r.each do |color|
	puts "Next color: #{color}"
end


# Here’s an example: find, which returns the first element in an enumerable object
# for which the code block provided returns true. Let’s say we want to find the first color
# that begins with the letter y. We can do it with find, like this:
r = Rainbow.new
y_color = r.find {|color| color.start_with?('y') }
puts "First color starting with 'y' is #{y_color}."


# Enumerable.instance_methods(false).sort
# => [:all?, :any?, :chunk, :collect, :collect_concat, :count, :cycle, :detect,
# :drop, :drop_while, :each_cons, :each_entry, :each_slice, :each_with_index,
# :each_with_object, :entries, :find, :find_all, :find_index, :first,
# :flat_map, :grep, :group_by, :include?, :inject, :lazy, :map, :max, :max_by,
# :member?, :min, :min_by, :minmax, :minmax_by, :none?, :one?, :partition,
# :reduce, :reject, :reverse_each, :select, :slice_before, :sort, :sort_by,
# :take, :take_while, :to_a, :to_h, :zip]

# 10.2 Enumerable Boolean queries

# ARRAYS
# A number of Enumerable methods return true or false depending on whether one or
# more element matches certain criteria.

# Does the array include Louisiana?
>> states.include?("Louisiana")
=> true
# Do all states include a space?
>> states.all? {|state| state =~ / / }
=> false

# Does any state include a space?
>> states.any? {|state| state =~ / / }
=> true
# Is there one, and only one, state with "West" in its name?
>> states.one? {|state| state =~ /West/ }
=> true
# Are there no states with "East" in their names?
>> states.none? {|state| state =~ /East/ }


