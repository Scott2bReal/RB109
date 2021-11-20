The invocation of `double` on line 8 does not raise an exception, because in the
method definition of `double` on lines 1-3, on line 2 a local variable `n` is
initialized and assigned to the return value of the expression `2 *
x`. Because `double` is defined with a parameter `x`, both of these local
variables are valid within the method definition.

The expression on line 2 `2 * x` in this case returns the `Integer` object `6`.
However, because method definitions create their own scope in Ruby, the local
variable `n` initialized on line 5 of the main scope will remain assigned to the
`Integer` object 4. Because `n` is not reassigned to the return value of the
`double` method call, it is still assigned to the `Integer` object `4`, and this
is what is output when the `puts` method is called on line 10 with `n` passed to
it as an argument.
