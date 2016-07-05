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
    it("returns true if inputted value exists") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHas_value?("cute")).to(eq(true))
    end
    it("returns false if inputted value does not exist") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myHas_value?("kitten")).to(eq(false))
    end
    it("returns the number of elements that are in the hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myLength).to(eq(4))
    end
    it "takes 2 hashes and returns merged hash that replaces the original value for a same key" do
      test_hash1 = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash2.myStore("kitten", "hi")
      test_hash2.myStore("kitten1", "cute1")
      test_hash2.myStore("kitten2", "cute2")
      test_hash1.myStore("kitten", "cute")
      test_hash1.myStore("kit", "cu")
      test_hash1.myStore("kitte", "cut")
      expect(test_hash1.myMerge(test_hash2)).to(eq([["kitten", "hi"], ["kit", "cu"], ["kitte", "cut"], ["kitten1", "cute1"], ["kitten2", "cute2"]]))
    end
  end
end
