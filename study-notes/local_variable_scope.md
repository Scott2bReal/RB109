# Local Variable Scope

Local variable scope refers to where in a program a local variable can be
accessed. A local variable initialized within the `main` method can be accessed
anywhere in the program after it has been initialized, with the exception of
inside of method definitions. A method definition creates its own scope and no
local variables from outside of that scope can be accessed within it. The only
way to access the object a local variable points to within a method definition
is to define that method with a parameter, and then to pass the object as an
argument to the method.
