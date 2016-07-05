class MyHash
  define_method(:initialize)  do
    @hash = []
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
    @hash.each do |hash_array|
      if hash_array[1] == value
        true
      else
        false
      end
    end
  end
  define_method(:myLength) do
    length = 0
    @hash.each do
      length += 1
    end
    length
  end
  define_method(:myMerge) do |merging_hash|
    merging_hash.each do |merging_hash_array|
      @hash.each do |hash_array|
        if hash_array[0] == merging_hash_array[0]
          hash_array[1] = merging_hash_array[0]
        end
      end
    end
  end
end
