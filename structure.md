1. Figure out what classes I want
    - Person
    - Computer
    - Board
    - Game

2. Figure out what each class does
  - Person
    - Exists
    - Has a name
    - Chooses a side
    - Makes moves

  - Computer
    - Exists
    - Receives a side
    - Makes moves
      - Need to know about the board

  - Board
    - Starts with a blank board with 9 spaces
    - Saves moves
    - Did anyone win?
    - Is there a tie?
    - Is the board full?
      Square
      - Is it empty? If not, knows the value

  - Game
    - Ask person for name
    - Ask person for side
    - Assign computer its side
    - Print out the board
    Loop until someone wins or board is full
      - Ask person for move
        - Check if move is valid? If available, marks the board
           If not available, ask the person to try again
      - Check for winner or board is full
      - Execute computer move
      - Check for winner or board is full
      - If no winner && board is not full, continue
      - Break out
    - Tell person result of game
    - Tell person of score

    Bonus
    - Ask to play again

3. Figure out the structure of my directory
    - lib
      - person.rb
      - computer.rb
      - board.rb
      - game.rb
    - README.md
    - gemfile
    - gemfile.lock
    - bin (executable)
    - spec

4. Do the easiest first
