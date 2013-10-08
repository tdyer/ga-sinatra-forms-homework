require_relative 'mem_store'

class User < MemStore

  attr_accessor :first_name, :last_name, :email, :password, :active

  def initialize(options = { })
    super() # need the parens here!
    
    @first_name = options.fetch(:first_name, '')
    @last_name = options.fetch(:last_name, '')
    @email = options.fetch(:email, '')
    @email = options.fetch(:description, '')
    @active = false
  end
  
  def name
    "#{first_name} #{last_name}"
  end

  def active?
    return active
  end
end
