=begin

#CLASSES
=> First-class objects
=> each is an instance of CLASSES
=> When created, an instance of the type class is created and assigned
  a global constant of 'Name'
=> the .new method is then run by default
Inheritance chart:

+---------+             +-...
|         |             |
BasicObject-----|-->(BasicObject)-------|-...
^           |         ^             |
|           |         |             |
Object---------|----->(Object)---------|-...
^           |         ^             |
|           |         |             |
+-------+   |         +--------+    |
|       |   |         |        |    |
|    Module-|---------|--->(Module)-|-...
|       ^   |         |        ^    |
|       |   |         |        |    |
|     Class-|---------|---->(Class)-|-...
|       ^   |         |        ^    |
|       +---+         |        +----+
|                     |
obj--->OtherClass---------->(OtherClass)-----------...

=end
