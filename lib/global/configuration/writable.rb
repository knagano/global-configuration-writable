require 'global'

module Global::Configuration::Writable
  def method_missing(method, *args, &block)
    return super unless method.to_s[-1] == '='
    raise ArgumentError.new("wrong number of arguments (1 for 2)") if args.length < 1
    hash[method.to_s[0..-2]] = args[0]
  end
end

Global::Configuration.__send__(:prepend, Global::Configuration::Writable)
