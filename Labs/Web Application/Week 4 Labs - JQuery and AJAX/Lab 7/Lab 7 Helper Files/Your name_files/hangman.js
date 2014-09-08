/**
 * This file contains the jQuery and JavaScript code that implements the game logic.
 */

// Here is a sample array of words to be guessed.
var words= ["abacus", "bamboo", "cuckoo", "dimple", "easter", "filter",
    "geyser", "happen", "indigo", "jersey", "karate", "little",
    "marker", "normal", "oblong", "patent", "quiche", "random",
    "sleepy", "terror", "unable", "violet", "wallet", "xylene",
    "yellow", "zipper"];


// You'll need the jQuery equivalent of the old JavaScript window.onload handler.

    // Handle the reset button event to:
        // Reset the UI appearance.
            // Hide the hangman.
            // Change the alphabet letters to white.
            // Hide all the letters in the hidden word to be guessed.
        // Randomly select a new word from the array above.
        // Reinitialize any variables you use during the game.


    // Handle the mouseover event for letters in the alphabet
        // Highlight each letter in the alphabet yellow as the mouse passes over

    // Handle the mouseout event for letters in the alphabet
        // Turn the highlight off when the mouse leaves an alphabet letter, but be sure to change
        // it back to red, white, or green as appropriate.

    // Handle mouse click events on the alphabet - this is how the user guesses letters for the hidden word
        // On a good guess
            // Change the alphabet letter's color to green to indicate that it was used.
            // Make the guessed letter in the hidden word visible.
            // If all letters in the hidden found - game over! Blink the "You Win" message until the game is reset.
        // On a bad guess
            // Change the alphabet letter's color to red to indicate that it was an incorrect guess.
            // Expose another piece of the hangman when an incorrect letter is guessed.
            // If the entire hangman is exposed - game over! Blink the "You Lose" message until the game is reset.
