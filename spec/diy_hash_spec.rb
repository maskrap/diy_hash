require('rspec')
require('diy_hash')
require('pry')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
  describe("#myHas_key?") do
    it("returns true if inputted key exists") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHas_key?("kitten")).to(eq(true))
    end
    it("returns false if inputted key does not exist") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHas_key?("cute")).to(eq(false))
    end
  end
end
