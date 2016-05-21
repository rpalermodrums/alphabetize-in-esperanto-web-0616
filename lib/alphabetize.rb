def alphabetize(arr)
  # code here
  dict = {}
  alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  alph.each_with_index do |letter, i|
    dict[letter] = i
  end
  arr.sort do |word, other_word|
    i = 0
    while word[i] == other_word[i] do
      i += 1
    end
    dict[word[i]] <=> dict[other_word[i]]
  end
end
