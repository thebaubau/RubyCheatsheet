# .bind and .bind call can only be used on an object of the same type
# You cannot bind the same method to a different class, only instances of the original

class MethodReferenceOp
  def self.foo
    p 'foo'
  end

  def bar
    p 'bar'
  end
end

def baz
  p 'baz'
end

MethodReferenceOp.foo

another_method = MethodReferenceOp.new.method(:bar)
another_method.call

unbound_method = MethodReferenceOp.instance_method :bar

yet_another_method = method(:baz)
yet_another_method.call

bound_method = unbound_method.bind_call(MethodReferenceOp.new)
