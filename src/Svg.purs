
-- | A Purescript implementation of Elm's SVG library.

module Elm.Svg
    ( module Virtual
    , Svg
    , Attribute
    , text
    , node
    , svg
    , foreignObject
    , circle
    , ellipse
    , image
    , line
    , path
    , polygon
    , polyline
    , rect
    , use
    , animate
    , animateColor
    , animateMotion
    , animateTransform
    , mpath
    , set
    , desc
    , metadata
    , title
    , a
    , defs
    , g
    , marker
    , mask
    , pattern
    , switch
    , symbol
    , altGlyph
    , altGlyphDef
    , altGlyphItem
    , glyph
    , glyphRef
    , textPath
    , text_
    , tref
    , tspan
    , font
    , fontFace
    , fontFaceFormat
    , fontFaceName
    , fontFaceSrc
    , fontFaceUri
    , hkern
    , vkern
    , linearGradient
    , radialGradient
    , stop
    , feBlend
    , feColorMatrix
    , feComponentTransfer
    , feComposite
    , feConvolveMatrix
    , feDiffuseLighting
    , feDisplacementMap
    , feFlood
    , feFuncA
    , feFuncB
    , feFuncG
    , feFuncR
    , feGaussianBlur
    , feImage
    , feMerge
    , feMergeNode
    , feMorphology
    , feOffset
    , feSpecularLighting
    , feTile
    , feTurbulence
    , feDistantLight
    , fePointLight
    , feSpotLight
    , clipPath
    , colorProfile
    , cursor
    , filter
    , script
    , style
    , view
    )
    where


import Control.Alternative (class Alternative, pure, (<|>))
import Data.Foldable (class Foldable)
import Elm.Json.Encode as Json
import Elm.VirtualDom as VirtualDom
import Html (Attribute, Html) as Html
import Prelude (map) as Virtual


-- | > The core building block to create SVG. This library is filled with helper
-- | > functions to create these `Svg` values.
-- | >
-- | > This is backed by `VirtualDom.Node` in `evancz/virtual-dom`, but you do not
-- | > need to know any details about that to use this library!
type Svg msg =
    VirtualDom.Node msg


-- | > Set attributes on your `Svg`.
type Attribute msg =
    VirtualDom.Property msg


svgNamespace :: ∀ msg. Attribute msg
svgNamespace =
    VirtualDom.property "namespace" (Json.string "http://www.w3.org/2000/svg")


-- | > Create any SVG node. To create a `<rect>` helper function, you would write:
-- | >
-- | >     rect : List (Attribute msg) -> List (Svg msg) -> Svg msg
-- | >     rect attributes children =
-- | >         node "rect" attributes children
-- | >
-- | > You should always be able to use the helper functions already defined in this
-- | > library though!
-- |
-- | The type signature is polymorphic to accommodate arrays, lists, etc.
node :: ∀ msg f g.
    Alternative f => Foldable f => Foldable g =>
    String -> f (Attribute msg) -> g (Svg msg) -> Svg msg
node name =
    \attributes children ->
        VirtualDom.node name (pure svgNamespace <|> attributes) children


-- | > A simple text node, no tags at all.
-- | >
-- | > Warning: not to be confused with `text_` which produces the SVG `<text>` tag!
text :: ∀ msg. String -> Svg msg
text =
    VirtualDom.text


-- | > The root `<svg>` node for any SVG scene. This example shows a scene
-- | > containing a rounded rectangle:
-- | >
-- | >     import Html
-- | >     import Svg exposing (..)
-- | >     import Svg.Attributes exposing (..)
-- | >
-- | >     roundRect : Html.Html msg
-- | >     roundRect =
-- | >         svg
-- | >           [ width "120", height "120", viewBox "0 0 120 120" ]
-- | >           [ rect [ x "10", y "10", width "100", height "100", rx "15", ry "15" ] [] ]
svg :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
svg =
    node "svg"


foreignObject :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Attribute msg) -> g (Html.Html msg) -> Svg msg
foreignObject =
    node "foreignObject"



-- Animation elements


animate :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
animate =
    node "animate"


animateColor :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
animateColor =
    node "animateColor"


animateMotion :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
animateMotion =
    node "animateMotion"


animateTransform :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
animateTransform =
    node "animateTransform"


mpath :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
mpath =
    node "mpath"


set :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
set =
    node "set"



-- Container elements


-- | > The SVG Anchor Element defines a hyperlink.
a :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
a =
    node "a"


defs :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
defs =
    node "defs"


g :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
g =
    node "g"


marker :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
marker =
    node "marker"


mask :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
mask =
    node "mask"


pattern :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
pattern =
    node "pattern"


switch :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
switch =
    node "switch"


symbol :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
symbol =
    node "symbol"



-- Descriptive elements


desc :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
desc =
    node "desc"


metadata :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
metadata =
    node "metadata"


title :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
title =
    node "title"



-- Filter primitive elements


feBlend :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feBlend =
    node "feBlend"


feColorMatrix :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feColorMatrix =
    node "feColorMatrix"


feComponentTransfer :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feComponentTransfer =
    node "feComponentTransfer"


feComposite :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feComposite =
    node "feComposite"


feConvolveMatrix :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feConvolveMatrix =
    node "feConvolveMatrix"


feDiffuseLighting :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feDiffuseLighting =
    node "feDiffuseLighting"


feDisplacementMap :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feDisplacementMap =
    node "feDisplacementMap"


feFlood :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feFlood =
    node "feFlood"


feFuncA :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feFuncA =
    node "feFuncA"


feFuncB :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feFuncB =
    node "feFuncB"


feFuncG :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feFuncG =
    node "feFuncG"


feFuncR :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feFuncR =
    node "feFuncR"


feGaussianBlur :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feGaussianBlur =
    node "feGaussianBlur"


feImage :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feImage =
    node "feImage"


feMerge :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feMerge =
    node "feMerge"


feMergeNode :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feMergeNode =
    node "feMergeNode"


feMorphology :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feMorphology =
    node "feMorphology"


feOffset :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feOffset =
    node "feOffset"


feSpecularLighting :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feSpecularLighting =
    node "feSpecularLighting"


feTile :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feTile =
    node "feTile"


feTurbulence :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feTurbulence =
    node "feTurbulence"



-- Font elements


font :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
font =
    node "font"


fontFace :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
fontFace =
    node "fontFace"


fontFaceFormat :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
fontFaceFormat =
    node "fontFaceFormat"


fontFaceName :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
fontFaceName =
    node "fontFaceName"


fontFaceSrc :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
fontFaceSrc =
    node "fontFaceSrc"


fontFaceUri :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
fontFaceUri =
    node "fontFaceUri"


hkern :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
hkern =
    node "hkern"


vkern :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
vkern =
    node "vkern"



-- Gradient elements


linearGradient :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
linearGradient =
    node "linearGradient"


radialGradient :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
radialGradient =
    node "radialGradient"


stop :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
stop =
    node "stop"



-- Graphics elements


-- | > The circle element is an SVG basic shape, used to create circles based on
-- | > a center point and a radius.
-- | >
-- | >     circle [ cx "60", cy "60", r "50" ] []
circle :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
circle =
    node "circle"


ellipse :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
ellipse =
    node "ellipse"


image :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
image =
    node "image"


line :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
line =
    node "line"


path :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
path =
    node "path"


polygon :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
polygon =
    node "polygon"


-- | > The polyline element is an SVG basic shape, used to create a series of
-- | > straight lines connecting several points. Typically a polyline is used to
-- | > create open shapes.
-- | >
-- | >     polyline [ fill "none", stroke "black", points "20,100 40,60 70,80 100,20" ] []
polyline :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
polyline =
    node "polyline"


rect :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
rect =
    node "rect"


use :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
use =
    node "use"



-- Light source elements


feDistantLight :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feDistantLight =
    node "feDistantLight"


fePointLight :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
fePointLight =
    node "fePointLight"


feSpotLight :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
feSpotLight =
    node "feSpotLight"



-- Text content elements


altGlyph :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
altGlyph =
    node "altGlyph"


altGlyphDef :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
altGlyphDef =
    node "altGlyphDef"


altGlyphItem :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
altGlyphItem =
    node "altGlyphItem"


glyph :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
glyph =
    node "glyph"


glyphRef :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
glyphRef =
    node "glyphRef"


textPath :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
textPath =
    node "textPath"


text_ :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
text_ =
    node "text"


tref :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
tref =
    node "tref"


tspan :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
tspan =
    node "tspan"



-- Uncategorized elements


clipPath :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
clipPath =
    node "clipPath"


colorProfile :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
colorProfile =
    node "colorProfile"


cursor :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
cursor =
    node "cursor"


filter :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
filter =
    node "filter"


script :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
script =
    node "script"


style :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
style =
    node "style"


view :: ∀ f g msg.
    Alternative f => Foldable f => Foldable g =>
    f (Html.Attribute msg) -> g (Svg msg) -> Html.Html msg
view =
    node "view"
