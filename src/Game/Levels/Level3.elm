module Game.Levels.Level3 exposing (..)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Types exposing (..)


playFieldHeight : Int
playFieldHeight =
    5


playFieldWidth : Int
playFieldWidth =
    5


selectedGrid : Grid
selectedGrid =
    { xy = ( -1, -1 ), status = NonSelected, item = Stick, dir = Nothing }


generateGrid : List Grid
generateGrid =
    [ { xy = ( 0, 0 ), status = Current, item = Field, dir = Nothing }
    , { xy = ( 0, 1 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 0, 2 ), status = NonSelected, item = Duplicator, dir = Just [ Left, Right ] }
    , { xy = ( 0, 3 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 0, 4 ), status = NonSelected, item = Field, dir = Nothing }
    , { xy = ( 1, 0 ), status = NonSelected, item = Bomb, dir = Just [ Down ] }
    , { xy = ( 1, 1 ), status = NonSelected, item = Field, dir = Nothing }
    , { xy = ( 1, 2 ), status = NonSelected, item = Bomb, dir = Just [ Down ] }
    , { xy = ( 1, 3 ), status = NonSelected, item = Field, dir = Nothing }
    , { xy = ( 1, 4 ), status = NonSelected, item = Bomb, dir = Just [ Down ] }
    , { xy = ( 2, 0 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 2, 1 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 2, 2 ), status = NonSelected, item = SuperWall, dir = Nothing }
    , { xy = ( 2, 3 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 2, 4 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 3, 0 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 3, 1 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 3, 2 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 3, 3 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 3, 4 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 4, 0 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 4, 1 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 4, 2 ), status = NonSelected, item = Win, dir = Nothing }
    , { xy = ( 4, 3 ), status = NonSelected, item = Wall, dir = Nothing }
    , { xy = ( 4, 4 ), status = NonSelected, item = Wall, dir = Nothing }
    ]
