def most_common_words(text)
    words = text.downcase.scan(/\w+/)

    # Создаем хэш, в котором ключами являются слова, а значениями - количество их появлений
    counts = Hash.new(0)
    words.each { |word| counts[word] += 1 }

    # Сортируем хэш по значению (количество появлений) в порядке убывания
    sorted_counts = counts.sort_by { |word, count| -count }

    # Выбираем топ-3 самых встречающихся слов (или меньше, если уникальных слов меньше 3)
    top_words = sorted_counts.take(3).map(&:first)

    # Возвращаем массив топ-слов
    top_words
end

puts most_common_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.").inspect


