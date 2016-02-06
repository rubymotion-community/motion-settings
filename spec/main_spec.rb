describe "Settings" do
  it "stores the given value under the given key" do
    Settings.set :favorite_color, "green"
    Settings.get(:favorite_color).should == "green"
  end

  it "allows both symbols and strings as keys" do
    Settings.set "dog", "Rover"
    Settings.get(:dog).should == "Rover"
    Settings.set :cat, "Tiger"
    Settings.get("cat").should == "Tiger"
  end

  it "returns nil when key does not exist" do
    Settings.get(:garbage).should == nil
  end

  it "allows boolean values" do
    Settings.set :cool, true
    Settings.get(:cool).should == true
    Settings.set :cool, false
    Settings.get(:cool).should == false
  end

  it "allows integer values" do
    Settings.set :max, 100
    Settings.get(:max).should == 100
  end

  it "allows simple hash values, except symbols are converted to strings" do
    Settings.set :hashie, { foo: "bar", "baz" => :bat }
    Settings.get(:hashie).should == { "foo" => "bar", "baz" => "bat" }
  end

  it "does not allow more complex hash values" do
    # FIXME: can't seem to catch the exception
    # User = Struct.new(:name, :age)
    # should.raise(NSInvalidArgumentException) {
    #   Settings.set :complex_hash, { user: User.new("drinky", 21) }
    # }
  end

  it "allows you to remove data" do
    Settings.set :hello, "world!"
    Settings.destroy(:hello)
    Settings.get(:hello).should == nil

    Settings.set :hello, "world!"
    Settings.set :foo, "bar"
    Settings.set :baz, "bat"
    Settings.clear
    Settings.get(:hello).should == nil
    Settings.get(:foo).should == nil
    Settings.get(:baz).should == nil
  end
end
