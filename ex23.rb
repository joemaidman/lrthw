# https://github.com/twilio/twilio-ruby/blob/master/lib/twilio-ruby/task_router/workflow_builder.rb

# Defines several classes with a number of properties. It is using an external JSON library and there are functions
# inside the classes that use this library to parse and filter data inputs. The inputs that are parsed and filtered seem
# to define rules and routes for use elsewhere in the application.

#NEW TERMS
# require => calls an external library/file for use in the current file. Returns true/false if it can't find it.
#            No file extension is specified i.e. .rb.
# module => mix methods into Ruby code and share them across multiple classes e.g. sort of a parent class. Can be
#           added with the 'include' keyword. One example is the Enumerable module which is used by the array and hash
#           classes e.g. .each. Get same functions without having to inherit. Modules cannot be instantiated.
# .each do |x| => an iterator to call on an array or hash that returns all the elements in the collection which can then be manipulated
# self => a keyword that give you access to the current object
# unless => opposite of if i.e. executes the code that follows if the conditional statement is false. Can be used in-line too
#           i.e. CODE unless conditional
# .nil? => checks if the object is nil
