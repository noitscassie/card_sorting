NUMBERS = [
  'Ace',
  'Two',
  'Three',
  'Four',
  'Five',
  'Six',
  'Seven',
  'Eight',
  'Nine',
  'Ten',
  'Jack',
  'Queen',
  'King',
]

SUITS = [
  'Clubs ♣️',
  'Diamonds ♦️',
  'Hearts ♥️',
  'Spades ♠️',
]

CARDS = NUMBERS.flat_map do |number|
  SUITS.map do |suit|
    "#{number} of #{suit}"
  end
end

DECK = CARDS.shuffle

deck = DECK.dup

def request(card)
  [
    "The #{card}, please and thank you",
    "Can I have the #{card}, please",
    "#{card}, please",
    "Next is the #{card}",
    card,
  ].sample
end

until deck.length == 0
  command = gets.chomp
  if command == ''
    card = deck.pop
    p request(card)
  end
end

command = gets.chomp

p "Nice work, you. I'm proud of you. I mean it."
