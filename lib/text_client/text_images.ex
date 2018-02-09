defmodule TextClient.TextImages do

  def image(:welcome) do
    image = """
    ______________________
    < HANGMAN! Let's play! >
    ----------------------
    \                   .,
      \         .      .TR   d'
        \      k,l    .R.b  .t .Je
          \   .P q.   a|.b .f .Z%
              .b .h  .E` # J: 2`     .
          .,.a .E  ,L.M'  ?:b `| ..J9!`.,
          q,.h.M`   `..,   ..,""` ..2"`
          .M, J8`   `:       `   3;
      .    Jk              ...,   `^7"90c.
        j,  ,!     .7"'`j,.|   .n.   ...
      j, 7'     .r`     4:      L   `...
      ..,m.      J`    ..,|..    J`  7TWi
      ..JJ,.:    %    oo      ,. ....,
        .,E      3     7`g.M:    P  41
      JT7"'      O.   .J,;     ``  V"7N.
      G.           ""Q+  .Zu.,!`      Z`
      .9.. .         J&..J!       .  ,:
          7"9a                    JM"!
            .5J.     ..        ..F`
                78a..   `    ..2'
                    J9Ksaw0"'
                  .EJ?A...a.
                  q...g...gi
                  .m...qa..,y:
                  .HQFNB&...mm
                  ,Z|,m.a.,dp
                .,?f` ,E?:"^7b
                `A| . .F^^7'^4,
                .MMMMMMMMMMMQzna,
            ...f"A.JdT     J:    Jp,
              `JNa..........A....af`
                  `^^^^^'`
    """
    image
  end

  def image(:won) do
    image = 
    """
     ________________________________
    < Let's set this place on FIRE!! >
     --------------------------------
                 .    .     .
           .  . .     `  ,
           .; .  : .' :  :  : .
          i..`: i` i.i.,i  i .
            `,--.|i |i|ii|ii|i:
             UooU\.'@@@@@@`.||'
             \__/(@@@@@@@@@@)'
                  (@@@@@@@@)
                  `YY~~~~YY'
                  ||    ||
    """
    image
  end

  def image(:lost) do
    image =
    """
     ____________                         ____________
    < GAME OVER! >                       < YOU DIE!!! >
    -------------                         ------------
    ^__^                                     /  _______
    (oo) _______            >         v__v  /  |    O   ) /
    (__)        )--      CHOP >       (oo)      ||----w |   --
        ||----w |  |        >         (__)      ||     ||     |
        ||     ||
    """
    image
  end

  def image(:good_guess) do
    image =
    """
     ________________________________________
    < MATCH! Keep it up... I'M WATCHING YOU! >
     ----------------------------------------
            / 
           /
                                      .::!!!!!!!:.
      .!!!!!:.                        .:!!!!!!!!!!!!
      ~~~~!!!!!!.                 .:!!!!!!!!!UWWW$$$
          :$$NWX!!:           .:!!!!!!XUWW$$$$$$$$$P
          $$$$$##WX!:      .<!!!!UW$$$$"  $$$$$$$$#
          $$$$$  $$$UX   :!!UW$$$$$$$$$   4$$$$$*
          ^$$$B  $$$$\     $$$$$$$$$$$$   d$$R"
            "*$bd$$$$      '*$$$$$$$$$$$o+#"
                ----          --------
    """
    image  
  end

  def image(:bad_guess) do
    image =
    """
      _____________________________________
    | BAD GUESS! Pull your Head out of...  |
    | Guess Again!                         |
    --------------------------------------
            /
            /
        ^__^        |
        (OO)\_______|   _______
        (__)\       )=( ____|_ |_____
            ||----w |   ||     |_____ |
            ||     ||   ||           ||
    """
    image
  end

  def image(:already_used) do
    image =
    """
      _____________________________________
    | ALLREADY GUESSED THAT LETTER!         |
    | Pull your Head out of... Guess Again! |
     -------------------------------------- 
            /
            /
        ^__^        |
        (OO)\_______|   _______
        (__)\       )=( ____|_ |_____
            ||----w |   ||     |_____ |
            ||     ||   ||           ||
    """
    image
  end

  def image(_game_state) do
    
  end

end