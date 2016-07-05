class MyHash
  define_method(:initialize)  do
    @hash = []
  end
  define_method(:hash)  do
    @hash
  end
  define_method(:myStore) do |key, value|
    hash_array = [key, value]
    @hash.push(hash_array)
  end
  define_method(:myFetch) do |key|
    @hash.each do |hash_array|
      if hash_array[0] == key
        return hash_array[1]
      end
    end
  end
  define_method(:myHas_key?) do |key|
    result = false
    @hash.each do |hash_array|
      if hash_array[0] == key
        result = true
      end
    end
    result
  end
  define_method(:myHas_value?) do |value|
    result = false
    @hash.each do |hash_array|
      if hash_array[1] == value
        result = true
      end
    end
    result
  end
  define_method(:myLength) do
    length = 0
    @hash.each do
      length += 1
    end
    length
  end
  define_method(:myMerge) do |merging_hash|
    i =0
    while i < merging_hash.myLength
      @hash.each_with_index do |hash_array, idx|
        if hash_array[0] == merging_hash.hash[i][0]
          hash_array[1] = merging_hash.hash[i][1]
          break
        elsif (idx == (@hash.length - 1))
          @hash.push(merging_hash.hash[i])
        end
      end
      i += 1
    end
    @hash
  end
end
