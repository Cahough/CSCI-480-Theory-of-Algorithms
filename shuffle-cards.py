import itertools
import random

# My own implementation of Fisher-Yates shuffling instead of using random.shuffle()
def fisherYatesShuffle(arr):
    # random.shuffle(arr)
    for i in range(len(arr)-1, 0, -1):
        j = random.randint(0, i)
        arr[i],arr[j] = arr[j],arr[i]


# Generate a deck of cards
deck = list(itertools.product(range(1,14),['Spades','Hearts','Diamonds','Clubs']))
print("Starting (sorted) deck:\n", deck)

# Shuffle the deck x times
while True:
    try:
        numShuffles = int(input("\nHow many times would you like to shuffle the deck? "))
    except ValueError:
        print("Error: You can only enter an integer value. Please try again.")
    else:
        break

    for _ in range(numShuffles):
        fisherYatesShuffle(deck)

# Print shuffled deck
print("\nDeck shuffled", str(numShuffles) + "x:\n", deck)

while True:
    try:
        handSize = int(input("\nHow many cards would you like to draw? "))
    except ValueError:
        print("Error: You can only enter an integer value. Please try again.")
    else:
        break

print()

drawHand = "yes"
while drawHand in ["yes", "Yes", "YES", "y", "Y"]:
    # Draw cards from the deck and name appropiate cards
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

    drawHand = input("\nWould you like to re-shuffle and draw another hand? Enter [y/n]: ")
    if drawHand not in ["yes", "Yes", "YES", "y", "Y"]:
        break
    else:
        fisherYatesShuffle(deck)
        print()