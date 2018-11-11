import itertools, random

deck = list(itertools.product(range(1,14),['Spades','Hearts','Diamonds','Clubs']))
print("Starting (sorted) deck:\n", deck)

numShuffles = int(input("\nHow many times would you like to shuffle the deck? "))
for _ in range(numShuffles):
    random.shuffle(deck)

print("\nDeck shuffled", str(numShuffles) + "x:\n", deck)

handSize = int(input("\nHow many cards would you like to draw? "))
print()
print(handSize, "card draw:")
for i in range(handSize):
    cardNum = deck[i][0]
    if cardNum == 1:
        print("Ace of", deck[i][1])
    elif cardNum == 11:
        print("Jack of", deck[i][1])
    elif cardNum == 12:
        print("Queen of", deck[i][1])
    elif cardNum == 13:
        print("King of", deck[i][1])
    else:
        print(deck[i][0], "of", deck[i][1])