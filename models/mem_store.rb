class MemStore

  @@id_count = 0

  attr_accessor :id

  @@store = { }

  def self.generate_id
    @@id_count += 1
  end

  def self.create(*args)
    klass_name = self.name

    # create Hash for this class if one doesn't exits
    # @@store['User'] => { }
    @@store.fetch(klass_name){ |class_key| @@store[klass_name] = { } }

    # create a new instance
    klass_instance = self.new(*args)

    @@store[klass_name][klass_instance.id] = klass_instance
    klass_instance
  end

  def self.all
    all = []
    return all unless @@store ||  @@store[self.name]
    @@store[self.name].each { |k, v| all << v} 
    all
  end

  def self.delete_all
    @@store.delete(self.name)
  end
  
  def self.find(id)
    @@store[self.name][id]
  end

  def self.show_store
    puts @@store.inspect
  end
  
  def self.count
    @@store[self.name].keys.size
  end
  
  def create(args)
   MemStore.create(args)
  end

  
  def initialize()
    @id = self.generate_id
  end

  def generate_id
    "#{self.class.name}_#{MemStore.generate_id}"    
  end

end
