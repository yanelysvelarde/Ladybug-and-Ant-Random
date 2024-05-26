# Random Number Game in SwiftUI
## Project Overview

This SwiftUI project implements a simple random number game where two players, represented by a ladybug and an ant, compete against a randomly generated number from the app. The game keeps track of the scores of the ladybug and the ant, as well as the number of times the game has been played.
Features

    Random Number Generation: Each round, a random number between 0 and 100 is generated for the ladybug, the ant, and the app.
    Score Keeping: Scores for the ladybug and ant are updated based on whether their random number is higher than the app's random number.
    Game Counter: Keeps track of how many times the game has been played.
    Digit Extraction: Displays the digits of the app's random number as images.

## UI Components
Ladybug and Ant View

Each player's view consists of:

    A label showing "Random Number"
    A text displaying the current random number
    An image representing the player (ladybug or ant)
    A text displaying the player's score

## Play Button

A button to start a new round of the game. When pressed, it generates new random numbers for the ladybug, ant, and app, updates the scores, and increments the game counter.
App's Random Number Display

The app's random number is displayed both as a text and using individual images for each digit.
Game Counter

Displays the number of times the game has been played.
Code Structure
Variables

    ladybugValue: Stores the random number for the ladybug.
    antValue: Stores the random number for the ant.
    appValue: Stores the random number for the app.
    timesPlayedValue: Keeps track of the number of games played.
    ladybugScore: Keeps track of the ladybug's score.
    antScore: Keeps track of the ant's score.

## Constants

    minimumValue: The minimum value for random number generation (0).
    maximumValue: The maximum value for random number generation (100).

## Views

The main view consists of:

    A vertical stack (VStack) containing:
        Two horizontal stacks (HStack), one for each player (ladybug and ant).
        A play button.
        A text displaying the app's random number.
        A horizontal stack (HStack) for displaying the digits of the app's random number as images.
        A text displaying the number of times the game has been played.

## Functions
playGame()

Generates new random numbers for the ladybug, ant, and app, updates the scores based on the random numbers, and increments the game counter.
extractDigits(from number: Int) -> [Int]

Extracts the digits from a number and returns them as an array of integers. This function ensures that the number is formatted as a three-digit string.
How to Run

    Open the project in Xcode.
    Make sure you have the necessary SwiftUI components and assets (e.g., images for digits and play button).
    Run the project on the simulator or a physical device.
    Press the play button to start a new round and see the results.

## Customization

You can customize the project by:

    Changing the range of random numbers by modifying minimumValue and maximumValue.
    Updating the images for the ladybug, ant, and digits as needed.
    Adding additional functionality or UI elements to enhance the game.

## Conclusion

This SwiftUI project provides a simple yet engaging way to practice using random number generation, state management, and UI composition in SwiftUI. It's a fun game that can be further extended and customized as needed.
