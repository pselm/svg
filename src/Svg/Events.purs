
module Svg.Events
    ( on
    , onBegin
    , onEnd
    , onRepeat
    , onAbort
    , onError
    , onResize
    , onScroll
    , onLoad
    , onUnload
    , onZoom
    , onActivate
    , onClick
    , onFocusIn
    , onFocusOut
    , onMouseDown
    , onMouseMove
    , onMouseOut
    , onMouseOver
    , onMouseUp
    )
    where

import Elm.Json.Decode as Json
import Elm.Svg (Attribute)
import Elm.VirtualDom as VirtualDom


-- | > Create a custom event listener.
-- | >
-- | >     import Json.Decode as Json
-- | >
-- | >     onClick : msg -> Attribute msg
-- | >     onClick msg =
-- | >       on "click" (Json.succeed msg)
-- | >
-- | > You first specify the name of the event in the same format as with JavaScript’s
-- | > `addEventListener`. Next you give a JSON decoder, which lets you pull
-- | > information out of the event object. If the decoder succeeds, it will produce
-- | > a message and route it to your `update` function.
on :: ∀ msg. String -> Json.Decoder msg -> Attribute msg
on =
    VirtualDom.on


simpleOn :: ∀ msg. String -> msg -> Attribute msg
simpleOn name =
    \msg -> on name (Json.succeed_ msg)



-- ANIMATION


onBegin :: ∀ msg. msg -> Attribute msg
onBegin =
    simpleOn "begin"


onEnd :: ∀ msg. msg -> Attribute msg
onEnd =
    simpleOn "end"


onRepeat :: ∀ msg. msg -> Attribute msg
onRepeat =
    simpleOn "repeat"



-- DOCUMENT


onAbort :: ∀ msg. msg -> Attribute msg
onAbort =
    simpleOn "abort"


onError :: ∀ msg. msg -> Attribute msg
onError =
    simpleOn "error"


onResize :: ∀ msg. msg -> Attribute msg
onResize =
    simpleOn "resize"


onScroll :: ∀ msg. msg -> Attribute msg
onScroll =
    simpleOn "scroll"


onLoad :: ∀ msg. msg -> Attribute msg
onLoad =
    simpleOn "load"


onUnload :: ∀ msg. msg -> Attribute msg
onUnload =
    simpleOn "unload"


onZoom :: ∀ msg. msg -> Attribute msg
onZoom =
    simpleOn "zoom"



-- GRAPHICAL


onActivate :: ∀ msg. msg -> Attribute msg
onActivate =
    simpleOn "activate"


onClick :: ∀ msg. msg -> Attribute msg
onClick =
    simpleOn "click"


onFocusIn :: ∀ msg. msg -> Attribute msg
onFocusIn =
    simpleOn "focusin"


onFocusOut :: ∀ msg. msg -> Attribute msg
onFocusOut =
    simpleOn "focusout"


onMouseDown :: ∀ msg. msg -> Attribute msg
onMouseDown =
    simpleOn "mousedown"


onMouseMove :: ∀ msg. msg -> Attribute msg
onMouseMove =
    simpleOn "mousemove"


onMouseOut :: ∀ msg. msg -> Attribute msg
onMouseOut =
    simpleOn "mouseout"


onMouseOver :: ∀ msg. msg -> Attribute msg
onMouseOver =
    simpleOn "mouseover"


onMouseUp :: ∀ msg. msg -> Attribute msg
onMouseUp =
    simpleOn "mouseup"
