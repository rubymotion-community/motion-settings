class Settings < NSUserDefaults
  attr_reader :name
  attr_accessor :value

  def self.get(name)
    new(name).fetch.value
  end

  def self.set(name, value)
    new(name).tap{|s| s.value = value; s.save }.value
  end

  def self.destroy(name)
    new(name).destroy
  end

  def self.clear
    NSUserDefaults.standardUserDefaults.setPersistentDomain(NSDictionary.dictionary, forName: NSBundle.mainBundle.bundleIdentifier)
  end

  def initialize(name)
    @name = name.to_s
  end

  def save
    NSUserDefaults.standardUserDefaults[name] = self.value
    NSUserDefaults.standardUserDefaults.synchronize
  end

  def fetch
    self.value = NSUserDefaults.standardUserDefaults[name]
    self
  end

  def destroy
    self.value = nil
    NSUserDefaults.standardUserDefaults.removeObjectForKey name
    save
  end
end
