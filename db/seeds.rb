10.times do |n|
  Card.create(word: "word#{n}", description: "言葉#{n}")
end
