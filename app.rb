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


def generate_deck(include_jokers:, include_instructions:)
  deck = CARDS
  if include_jokers
    deck << 'Black Joker'
    deck << 'Red Joker'
  end
  deck << 'Instruction Manual' if include_instructions
  deck.shuffle
end

def request(card)
  [
    "The #{card}, please and thank you",
    "Can I have the #{card}, please",
    "#{card}, please",
    "The #{card}, please",
    "Next is the #{card}",
    card,
    "The #{card}",
    "And now the #{card}",
  ].sample
end

deck = generate_deck(include_jokers: true, include_instructions: true)

until deck.length == 0
  command = gets.chomp
  if command == ''
    card = deck.pop
    p request(card)
  end
end

command = gets.chomp

p "Nice work, you. I'm proud of you. I mean it."
