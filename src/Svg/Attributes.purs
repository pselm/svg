
module Elm.Svg.Attributes
    ( accentHeight
    , accelerate
    , accumulate
    , additive
    , alphabetic
    , allowReorder
    , amplitude
    , arabicForm
    , ascent
    , attributeName
    , attributeType
    , autoReverse
    , azimuth
    , baseFrequency
    , baseProfile
    , bbox
    , begin
    , bias
    , by
    , calcMode
    , capHeight
    , class_
    , clipPathUnits
    , contentScriptType
    , contentStyleType
    , cx
    , cy
    , d
    , decelerate
    , descent
    , diffuseConstant
    , divisor
    , dur
    , dx
    , dy
    , edgeMode
    , elevation
    , end
    , exponent
    , externalResourcesRequired
    , filterRes
    , filterUnits
    , format
    , from
    , fx
    , fy
    , g1
    , g2
    , glyphName
    , glyphRef
    , gradientTransform
    , gradientUnits
    , hanging
    , height
    , horizAdvX
    , horizOriginX
    , horizOriginY
    , id
    , ideographic
    , in_
    , in2
    , intercept
    , k
    , k1
    , k2
    , k3
    , k4
    , kernelMatrix
    , kernelUnitLength
    , keyPoints
    , keySplines
    , keyTimes
    , lang
    , lengthAdjust
    , limitingConeAngle
    , local
    , markerHeight
    , markerUnits
    , markerWidth
    , maskContentUnits
    , maskUnits
    , mathematical
    , max
    , media
    , method
    , min
    , mode
    , name
    , numOctaves
    , offset
    , operator
    , order
    , orient
    , orientation
    , origin
    , overlinePosition
    , overlineThickness
    , panose1
    , path
    , pathLength
    , patternContentUnits
    , patternTransform
    , patternUnits
    , pointOrder
    , points
    , pointsAtX
    , pointsAtY
    , pointsAtZ
    , preserveAlpha
    , preserveAspectRatio
    , primitiveUnits
    , r
    , radius
    , refX
    , refY
    , renderingIntent
    , repeatCount
    , repeatDur
    , requiredExtensions
    , requiredFeatures
    , restart
    , result
    , rotate
    , rx
    , ry
    , scale
    , seed
    , slope
    , spacing
    , specularConstant
    , specularExponent
    , speed
    , spreadMethod
    , startOffset
    , stdDeviation
    , stemh
    , stemv
    , stitchTiles
    , strikethroughPosition
    , strikethroughThickness
    , string
    , style
    , surfaceScale
    , systemLanguage
    , tableValues
    , target
    , targetX
    , targetY
    , textLength
    , title
    , to
    , transform
    , type_
    , u1
    , u2
    , underlinePosition
    , underlineThickness
    , unicode
    , unicodeRange
    , unitsPerEm
    , vAlphabetic
    , vHanging
    , vIdeographic
    , vMathematical
    , values
    , version
    , vertAdvY
    , vertOriginX
    , vertOriginY
    , viewBox
    , viewTarget
    , width
    , widths
    , x
    , xHeight
    , x1
    , x2
    , xChannelSelector
    , xlinkActuate
    , xlinkArcrole
    , xlinkHref
    , xlinkRole
    , xlinkShow
    , xlinkTitle
    , xlinkType
    , xmlBase
    , xmlLang
    , xmlSpace
    , y
    , y1
    , y2
    , yChannelSelector
    , z
    , zoomAndPan
    , alignmentBaseline
    , baselineShift
    , clipPath
    , clipRule
    , clip
    , colorInterpolationFilters
    , colorInterpolation
    , colorProfile
    , colorRendering
    , color
    , cursor
    , direction
    , display
    , dominantBaseline
    , enableBackground
    , fillOpacity
    , fillRule
    , fill
    , filter
    , floodColor
    , floodOpacity
    , fontFamily
    , fontSizeAdjust
    , fontSize
    , fontStretch
    , fontStyle
    , fontVariant
    , fontWeight
    , glyphOrientationHorizontal
    , glyphOrientationVertical
    , imageRendering
    , kerning
    , letterSpacing
    , lightingColor
    , markerEnd
    , markerMid
    , markerStart
    , mask
    , opacity
    , overflow
    , pointerEvents
    , shapeRendering
    , stopColor
    , stopOpacity
    , strokeDasharray
    , strokeDashoffset
    , strokeLinecap
    , strokeLinejoin
    , strokeMiterlimit
    , strokeOpacity
    , strokeWidth
    , stroke
    , textAnchor
    , textDecoration
    , textRendering
    , unicodeBidi
    , visibility
    , wordSpacing
    , writingMode
    )
    where

import Elm.Svg (Attribute)
import Elm.VirtualDom (attribute, attributeNS)


-- Regular attributes


accentHeight :: ∀ msg. String -> Attribute msg
accentHeight =
    attribute "accent-height"


accelerate :: ∀ msg. String -> Attribute msg
accelerate =
    attribute "accelerate"


accumulate :: ∀ msg. String -> Attribute msg
accumulate =
    attribute "accumulate"


additive :: ∀ msg. String -> Attribute msg
additive =
    attribute "additive"


alphabetic :: ∀ msg. String -> Attribute msg
alphabetic =
    attribute "alphabetic"


allowReorder :: ∀ msg. String -> Attribute msg
allowReorder =
    attribute "allowReorder"


amplitude :: ∀ msg. String -> Attribute msg
amplitude =
    attribute "amplitude"


arabicForm :: ∀ msg. String -> Attribute msg
arabicForm =
    attribute "arabic-form"


ascent :: ∀ msg. String -> Attribute msg
ascent =
    attribute "ascent"


attributeName :: ∀ msg. String -> Attribute msg
attributeName =
    attribute "attributeName"


attributeType :: ∀ msg. String -> Attribute msg
attributeType =
    attribute "attributeType"


autoReverse :: ∀ msg. String -> Attribute msg
autoReverse =
    attribute "autoReverse"


azimuth :: ∀ msg. String -> Attribute msg
azimuth =
    attribute "azimuth"


baseFrequency :: ∀ msg. String -> Attribute msg
baseFrequency =
    attribute "baseFrequency"


baseProfile :: ∀ msg. String -> Attribute msg
baseProfile =
    attribute "baseProfile"


bbox :: ∀ msg. String -> Attribute msg
bbox =
    attribute "bbox"


begin :: ∀ msg. String -> Attribute msg
begin =
    attribute "begin"


bias :: ∀ msg. String -> Attribute msg
bias =
    attribute "bias"


by :: ∀ msg. String -> Attribute msg
by =
    attribute "by"


calcMode :: ∀ msg. String -> Attribute msg
calcMode =
    attribute "calcMode"


capHeight :: ∀ msg. String -> Attribute msg
capHeight =
    attribute "cap-height"


class_ :: ∀ msg. String -> Attribute msg
class_ =
    attribute "class"


clipPathUnits :: ∀ msg. String -> Attribute msg
clipPathUnits =
    attribute "clipPathUnits"


contentScriptType :: ∀ msg. String -> Attribute msg
contentScriptType =
    attribute "contentScriptType"


contentStyleType :: ∀ msg. String -> Attribute msg
contentStyleType =
    attribute "contentStyleType"


cx :: ∀ msg. String -> Attribute msg
cx =
    attribute "cx"


cy :: ∀ msg. String -> Attribute msg
cy =
    attribute "cy"


d :: ∀ msg. String -> Attribute msg
d =
    attribute "d"


decelerate :: ∀ msg. String -> Attribute msg
decelerate =
    attribute "decelerate"


descent :: ∀ msg. String -> Attribute msg
descent =
    attribute "descent"


diffuseConstant :: ∀ msg. String -> Attribute msg
diffuseConstant =
    attribute "diffuseConstant"


divisor :: ∀ msg. String -> Attribute msg
divisor =
    attribute "divisor"


dur :: ∀ msg. String -> Attribute msg
dur =
    attribute "dur"


dx :: ∀ msg. String -> Attribute msg
dx =
    attribute "dx"


dy :: ∀ msg. String -> Attribute msg
dy =
    attribute "dy"


edgeMode :: ∀ msg. String -> Attribute msg
edgeMode =
    attribute "edgeMode"


elevation :: ∀ msg. String -> Attribute msg
elevation =
    attribute "elevation"


end :: ∀ msg. String -> Attribute msg
end =
    attribute "end"


exponent :: ∀ msg. String -> Attribute msg
exponent =
    attribute "exponent"


externalResourcesRequired :: ∀ msg. String -> Attribute msg
externalResourcesRequired =
    attribute "externalResourcesRequired"


filterRes :: ∀ msg. String -> Attribute msg
filterRes =
    attribute "filterRes"


filterUnits :: ∀ msg. String -> Attribute msg
filterUnits =
    attribute "filterUnits"


format :: ∀ msg. String -> Attribute msg
format =
    attribute "format"


from :: ∀ msg. String -> Attribute msg
from =
    attribute "from"


fx :: ∀ msg. String -> Attribute msg
fx =
    attribute "fx"


fy :: ∀ msg. String -> Attribute msg
fy =
    attribute "fy"


g1 :: ∀ msg. String -> Attribute msg
g1 =
    attribute "g1"


g2 :: ∀ msg. String -> Attribute msg
g2 =
    attribute "g2"


glyphName :: ∀ msg. String -> Attribute msg
glyphName =
    attribute "glyph-name"


glyphRef :: ∀ msg. String -> Attribute msg
glyphRef =
    attribute "glyphRef"


gradientTransform :: ∀ msg. String -> Attribute msg
gradientTransform =
    attribute "gradientTransform"


gradientUnits :: ∀ msg. String -> Attribute msg
gradientUnits =
    attribute "gradientUnits"


hanging :: ∀ msg. String -> Attribute msg
hanging =
    attribute "hanging"


height :: ∀ msg. String -> Attribute msg
height =
    attribute "height"


horizAdvX :: ∀ msg. String -> Attribute msg
horizAdvX =
    attribute "horiz-adv-x"


horizOriginX :: ∀ msg. String -> Attribute msg
horizOriginX =
    attribute "horiz-origin-x"


horizOriginY :: ∀ msg. String -> Attribute msg
horizOriginY =
    attribute "horiz-origin-y"


id :: ∀ msg. String -> Attribute msg
id =
    attribute "id"


ideographic :: ∀ msg. String -> Attribute msg
ideographic =
    attribute "ideographic"


in_ :: ∀ msg. String -> Attribute msg
in_ =
    attribute "in"


in2 :: ∀ msg. String -> Attribute msg
in2 =
    attribute "in2"


intercept :: ∀ msg. String -> Attribute msg
intercept =
    attribute "intercept"


k :: ∀ msg. String -> Attribute msg
k =
    attribute "k"


k1 :: ∀ msg. String -> Attribute msg
k1 =
    attribute "k1"


k2 :: ∀ msg. String -> Attribute msg
k2 =
    attribute "k2"


k3 :: ∀ msg. String -> Attribute msg
k3 =
    attribute "k3"


k4 :: ∀ msg. String -> Attribute msg
k4 =
    attribute "k4"


kernelMatrix :: ∀ msg. String -> Attribute msg
kernelMatrix =
    attribute "kernelMatrix"


kernelUnitLength :: ∀ msg. String -> Attribute msg
kernelUnitLength =
    attribute "kernelUnitLength"


keyPoints :: ∀ msg. String -> Attribute msg
keyPoints =
    attribute "keyPoints"


keySplines :: ∀ msg. String -> Attribute msg
keySplines =
    attribute "keySplines"


keyTimes :: ∀ msg. String -> Attribute msg
keyTimes =
    attribute "keyTimes"


lang :: ∀ msg. String -> Attribute msg
lang =
    attribute "lang"


lengthAdjust :: ∀ msg. String -> Attribute msg
lengthAdjust =
    attribute "lengthAdjust"


limitingConeAngle :: ∀ msg. String -> Attribute msg
limitingConeAngle =
    attribute "limitingConeAngle"


local :: ∀ msg. String -> Attribute msg
local =
    attribute "local"


markerHeight :: ∀ msg. String -> Attribute msg
markerHeight =
    attribute "markerHeight"


markerUnits :: ∀ msg. String -> Attribute msg
markerUnits =
    attribute "markerUnits"


markerWidth :: ∀ msg. String -> Attribute msg
markerWidth =
    attribute "markerWidth"


maskContentUnits :: ∀ msg. String -> Attribute msg
maskContentUnits =
    attribute "maskContentUnits"


maskUnits :: ∀ msg. String -> Attribute msg
maskUnits =
    attribute "maskUnits"


mathematical :: ∀ msg. String -> Attribute msg
mathematical =
    attribute "mathematical"


max :: ∀ msg. String -> Attribute msg
max =
    attribute "max"


media :: ∀ msg. String -> Attribute msg
media =
    attribute "media"


method :: ∀ msg. String -> Attribute msg
method =
    attribute "method"


min :: ∀ msg. String -> Attribute msg
min =
    attribute "min"


mode :: ∀ msg. String -> Attribute msg
mode =
    attribute "mode"


name :: ∀ msg. String -> Attribute msg
name =
    attribute "name"


numOctaves :: ∀ msg. String -> Attribute msg
numOctaves =
    attribute "numOctaves"


offset :: ∀ msg. String -> Attribute msg
offset =
    attribute "offset"


operator :: ∀ msg. String -> Attribute msg
operator =
    attribute "operator"


order :: ∀ msg. String -> Attribute msg
order =
    attribute "order"


orient :: ∀ msg. String -> Attribute msg
orient =
    attribute "orient"


orientation :: ∀ msg. String -> Attribute msg
orientation =
    attribute "orientation"


origin :: ∀ msg. String -> Attribute msg
origin =
    attribute "origin"


overlinePosition :: ∀ msg. String -> Attribute msg
overlinePosition =
    attribute "overline-position"


overlineThickness :: ∀ msg. String -> Attribute msg
overlineThickness =
    attribute "overline-thickness"


panose1 :: ∀ msg. String -> Attribute msg
panose1 =
    attribute "panose-1"


path :: ∀ msg. String -> Attribute msg
path =
    attribute "path"


pathLength :: ∀ msg. String -> Attribute msg
pathLength =
    attribute "pathLength"


patternContentUnits :: ∀ msg. String -> Attribute msg
patternContentUnits =
    attribute "patternContentUnits"


patternTransform :: ∀ msg. String -> Attribute msg
patternTransform =
    attribute "patternTransform"


patternUnits :: ∀ msg. String -> Attribute msg
patternUnits =
    attribute "patternUnits"


pointOrder :: ∀ msg. String -> Attribute msg
pointOrder =
    attribute "point-order"


points :: ∀ msg. String -> Attribute msg
points =
    attribute "points"


pointsAtX :: ∀ msg. String -> Attribute msg
pointsAtX =
    attribute "pointsAtX"


pointsAtY :: ∀ msg. String -> Attribute msg
pointsAtY =
    attribute "pointsAtY"


pointsAtZ :: ∀ msg. String -> Attribute msg
pointsAtZ =
    attribute "pointsAtZ"


preserveAlpha :: ∀ msg. String -> Attribute msg
preserveAlpha =
    attribute "preserveAlpha"


preserveAspectRatio :: ∀ msg. String -> Attribute msg
preserveAspectRatio =
    attribute "preserveAspectRatio"


primitiveUnits :: ∀ msg. String -> Attribute msg
primitiveUnits =
    attribute "primitiveUnits"


r :: ∀ msg. String -> Attribute msg
r =
    attribute "r"


radius :: ∀ msg. String -> Attribute msg
radius =
    attribute "radius"


refX :: ∀ msg. String -> Attribute msg
refX =
    attribute "refX"


refY :: ∀ msg. String -> Attribute msg
refY =
    attribute "refY"


renderingIntent :: ∀ msg. String -> Attribute msg
renderingIntent =
    attribute "rendering-intent"


repeatCount :: ∀ msg. String -> Attribute msg
repeatCount =
    attribute "repeatCount"


repeatDur :: ∀ msg. String -> Attribute msg
repeatDur =
    attribute "repeatDur"


requiredExtensions :: ∀ msg. String -> Attribute msg
requiredExtensions =
    attribute "requiredExtensions"


requiredFeatures :: ∀ msg. String -> Attribute msg
requiredFeatures =
    attribute "requiredFeatures"


restart :: ∀ msg. String -> Attribute msg
restart =
    attribute "restart"


result :: ∀ msg. String -> Attribute msg
result =
    attribute "result"


rotate :: ∀ msg. String -> Attribute msg
rotate =
    attribute "rotate"


rx :: ∀ msg. String -> Attribute msg
rx =
    attribute "rx"


ry :: ∀ msg. String -> Attribute msg
ry =
    attribute "ry"


scale :: ∀ msg. String -> Attribute msg
scale =
    attribute "scale"


seed :: ∀ msg. String -> Attribute msg
seed =
    attribute "seed"


slope :: ∀ msg. String -> Attribute msg
slope =
    attribute "slope"


spacing :: ∀ msg. String -> Attribute msg
spacing =
    attribute "spacing"


specularConstant :: ∀ msg. String -> Attribute msg
specularConstant =
    attribute "specularConstant"


specularExponent :: ∀ msg. String -> Attribute msg
specularExponent =
    attribute "specularExponent"


speed :: ∀ msg. String -> Attribute msg
speed =
    attribute "speed"


spreadMethod :: ∀ msg. String -> Attribute msg
spreadMethod =
    attribute "spreadMethod"


startOffset :: ∀ msg. String -> Attribute msg
startOffset =
    attribute "startOffset"


stdDeviation :: ∀ msg. String -> Attribute msg
stdDeviation =
    attribute "stdDeviation"


stemh :: ∀ msg. String -> Attribute msg
stemh =
    attribute "stemh"


stemv :: ∀ msg. String -> Attribute msg
stemv =
    attribute "stemv"


stitchTiles :: ∀ msg. String -> Attribute msg
stitchTiles =
    attribute "stitchTiles"


strikethroughPosition :: ∀ msg. String -> Attribute msg
strikethroughPosition =
    attribute "strikethrough-position"


strikethroughThickness :: ∀ msg. String -> Attribute msg
strikethroughThickness =
    attribute "strikethrough-thickness"


string :: ∀ msg. String -> Attribute msg
string =
    attribute "string"


style :: ∀ msg. String -> Attribute msg
style =
    attribute "style"


surfaceScale :: ∀ msg. String -> Attribute msg
surfaceScale =
    attribute "surfaceScale"


systemLanguage :: ∀ msg. String -> Attribute msg
systemLanguage =
    attribute "systemLanguage"


tableValues :: ∀ msg. String -> Attribute msg
tableValues =
    attribute "tableValues"


target :: ∀ msg. String -> Attribute msg
target =
    attribute "target"


targetX :: ∀ msg. String -> Attribute msg
targetX =
    attribute "targetX"


targetY :: ∀ msg. String -> Attribute msg
targetY =
    attribute "targetY"


textLength :: ∀ msg. String -> Attribute msg
textLength =
    attribute "textLength"


title :: ∀ msg. String -> Attribute msg
title =
    attribute "title"


to :: ∀ msg. String -> Attribute msg
to =
    attribute "to"


transform :: ∀ msg. String -> Attribute msg
transform =
    attribute "transform"


type_ :: ∀ msg. String -> Attribute msg
type_ =
    attribute "type"


u1 :: ∀ msg. String -> Attribute msg
u1 =
    attribute "u1"


u2 :: ∀ msg. String -> Attribute msg
u2 =
    attribute "u2"


underlinePosition :: ∀ msg. String -> Attribute msg
underlinePosition =
    attribute "underline-position"


underlineThickness :: ∀ msg. String -> Attribute msg
underlineThickness =
    attribute "underline-thickness"


unicode :: ∀ msg. String -> Attribute msg
unicode =
    attribute "unicode"


unicodeRange :: ∀ msg. String -> Attribute msg
unicodeRange =
    attribute "unicode-range"


unitsPerEm :: ∀ msg. String -> Attribute msg
unitsPerEm =
    attribute "units-per-em"


vAlphabetic :: ∀ msg. String -> Attribute msg
vAlphabetic =
    attribute "v-alphabetic"


vHanging :: ∀ msg. String -> Attribute msg
vHanging =
    attribute "v-hanging"


vIdeographic :: ∀ msg. String -> Attribute msg
vIdeographic =
    attribute "v-ideographic"


vMathematical :: ∀ msg. String -> Attribute msg
vMathematical =
    attribute "v-mathematical"


values :: ∀ msg. String -> Attribute msg
values =
    attribute "values"


version :: ∀ msg. String -> Attribute msg
version =
    attribute "version"


vertAdvY :: ∀ msg. String -> Attribute msg
vertAdvY =
    attribute "vert-adv-y"


vertOriginX :: ∀ msg. String -> Attribute msg
vertOriginX =
    attribute "vert-origin-x"


vertOriginY :: ∀ msg. String -> Attribute msg
vertOriginY =
    attribute "vert-origin-y"


viewBox :: ∀ msg. String -> Attribute msg
viewBox =
    attribute "viewBox"


viewTarget :: ∀ msg. String -> Attribute msg
viewTarget =
    attribute "viewTarget"


width :: ∀ msg. String -> Attribute msg
width =
    attribute "width"


widths :: ∀ msg. String -> Attribute msg
widths =
    attribute "widths"


x :: ∀ msg. String -> Attribute msg
x =
    attribute "x"


xHeight :: ∀ msg. String -> Attribute msg
xHeight =
    attribute "x-height"


x1 :: ∀ msg. String -> Attribute msg
x1 =
    attribute "x1"


x2 :: ∀ msg. String -> Attribute msg
x2 =
    attribute "x2"


xChannelSelector :: ∀ msg. String -> Attribute msg
xChannelSelector =
    attribute "xChannelSelector"


xlinkActuate :: ∀ msg. String -> Attribute msg
xlinkActuate =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


xlinkArcrole :: ∀ msg. String -> Attribute msg
xlinkArcrole =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


xlinkHref :: ∀ msg. String -> Attribute msg
xlinkHref =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:href"


xlinkRole :: ∀ msg. String -> Attribute msg
xlinkRole =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:role"


xlinkShow :: ∀ msg. String -> Attribute msg
xlinkShow =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:show"


xlinkTitle :: ∀ msg. String -> Attribute msg
xlinkTitle =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:title"


xlinkType :: ∀ msg. String -> Attribute msg
xlinkType =
    attributeNS "http://www.w3.org/1999/xlink" "xlink:type"


xmlBase :: ∀ msg. String -> Attribute msg
xmlBase =
    attributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


xmlLang :: ∀ msg. String -> Attribute msg
xmlLang =
    attributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


xmlSpace :: ∀ msg. String -> Attribute msg
xmlSpace =
    attributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


y :: ∀ msg. String -> Attribute msg
y =
    attribute "y"


y1 :: ∀ msg. String -> Attribute msg
y1 =
    attribute "y1"


y2 :: ∀ msg. String -> Attribute msg
y2 =
    attribute "y2"


yChannelSelector :: ∀ msg. String -> Attribute msg
yChannelSelector =
    attribute "yChannelSelector"


z :: ∀ msg. String -> Attribute msg
z =
    attribute "z"


zoomAndPan :: ∀ msg. String -> Attribute msg
zoomAndPan =
    attribute "zoomAndPan"



-- Presentation attributes


alignmentBaseline :: ∀ msg. String -> Attribute msg
alignmentBaseline =
    attribute "alignment-baseline"


baselineShift :: ∀ msg. String -> Attribute msg
baselineShift =
    attribute "baseline-shift"


clipPath :: ∀ msg. String -> Attribute msg
clipPath =
    attribute "clip-path"


clipRule :: ∀ msg. String -> Attribute msg
clipRule =
    attribute "clip-rule"


clip :: ∀ msg. String -> Attribute msg
clip =
    attribute "clip"


colorInterpolationFilters :: ∀ msg. String -> Attribute msg
colorInterpolationFilters =
    attribute "color-interpolation-filters"


colorInterpolation :: ∀ msg. String -> Attribute msg
colorInterpolation =
    attribute "color-interpolation"


colorProfile :: ∀ msg. String -> Attribute msg
colorProfile =
    attribute "color-profile"


colorRendering :: ∀ msg. String -> Attribute msg
colorRendering =
    attribute "color-rendering"


color :: ∀ msg. String -> Attribute msg
color =
    attribute "color"


cursor :: ∀ msg. String -> Attribute msg
cursor =
    attribute "cursor"


direction :: ∀ msg. String -> Attribute msg
direction =
    attribute "direction"


display :: ∀ msg. String -> Attribute msg
display =
    attribute "display"


dominantBaseline :: ∀ msg. String -> Attribute msg
dominantBaseline =
    attribute "dominant-baseline"


enableBackground :: ∀ msg. String -> Attribute msg
enableBackground =
    attribute "enable-background"


fillOpacity :: ∀ msg. String -> Attribute msg
fillOpacity =
    attribute "fill-opacity"


fillRule :: ∀ msg. String -> Attribute msg
fillRule =
    attribute "fill-rule"


fill :: ∀ msg. String -> Attribute msg
fill =
    attribute "fill"


filter :: ∀ msg. String -> Attribute msg
filter =
    attribute "filter"


floodColor :: ∀ msg. String -> Attribute msg
floodColor =
    attribute "flood-color"


floodOpacity :: ∀ msg. String -> Attribute msg
floodOpacity =
    attribute "flood-opacity"


fontFamily :: ∀ msg. String -> Attribute msg
fontFamily =
    attribute "font-family"


fontSizeAdjust :: ∀ msg. String -> Attribute msg
fontSizeAdjust =
    attribute "font-size-adjust"


fontSize :: ∀ msg. String -> Attribute msg
fontSize =
    attribute "font-size"


fontStretch :: ∀ msg. String -> Attribute msg
fontStretch =
    attribute "font-stretch"


fontStyle :: ∀ msg. String -> Attribute msg
fontStyle =
    attribute "font-style"


fontVariant :: ∀ msg. String -> Attribute msg
fontVariant =
    attribute "font-variant"


fontWeight :: ∀ msg. String -> Attribute msg
fontWeight =
    attribute "font-weight"


glyphOrientationHorizontal :: ∀ msg. String -> Attribute msg
glyphOrientationHorizontal =
    attribute "glyph-orientation-horizontal"


glyphOrientationVertical :: ∀ msg. String -> Attribute msg
glyphOrientationVertical =
    attribute "glyph-orientation-vertical"


imageRendering :: ∀ msg. String -> Attribute msg
imageRendering =
    attribute "image-rendering"


kerning :: ∀ msg. String -> Attribute msg
kerning =
    attribute "kerning"


letterSpacing :: ∀ msg. String -> Attribute msg
letterSpacing =
    attribute "letter-spacing"


lightingColor :: ∀ msg. String -> Attribute msg
lightingColor =
    attribute "lighting-color"


markerEnd :: ∀ msg. String -> Attribute msg
markerEnd =
    attribute "marker-end"


markerMid :: ∀ msg. String -> Attribute msg
markerMid =
    attribute "marker-mid"


markerStart :: ∀ msg. String -> Attribute msg
markerStart =
    attribute "marker-start"


mask :: ∀ msg. String -> Attribute msg
mask =
    attribute "mask"


opacity :: ∀ msg. String -> Attribute msg
opacity =
    attribute "opacity"


overflow :: ∀ msg. String -> Attribute msg
overflow =
    attribute "overflow"


pointerEvents :: ∀ msg. String -> Attribute msg
pointerEvents =
    attribute "pointer-events"


shapeRendering :: ∀ msg. String -> Attribute msg
shapeRendering =
    attribute "shape-rendering"


stopColor :: ∀ msg. String -> Attribute msg
stopColor =
    attribute "stop-color"


stopOpacity :: ∀ msg. String -> Attribute msg
stopOpacity =
    attribute "stop-opacity"


strokeDasharray :: ∀ msg. String -> Attribute msg
strokeDasharray =
    attribute "stroke-dasharray"


strokeDashoffset :: ∀ msg. String -> Attribute msg
strokeDashoffset =
    attribute "stroke-dashoffset"


strokeLinecap :: ∀ msg. String -> Attribute msg
strokeLinecap =
    attribute "stroke-linecap"


strokeLinejoin :: ∀ msg. String -> Attribute msg
strokeLinejoin =
    attribute "stroke-linejoin"


strokeMiterlimit :: ∀ msg. String -> Attribute msg
strokeMiterlimit =
    attribute "stroke-miterlimit"


strokeOpacity :: ∀ msg. String -> Attribute msg
strokeOpacity =
    attribute "stroke-opacity"


strokeWidth :: ∀ msg. String -> Attribute msg
strokeWidth =
    attribute "stroke-width"


stroke :: ∀ msg. String -> Attribute msg
stroke =
    attribute "stroke"


textAnchor :: ∀ msg. String -> Attribute msg
textAnchor =
    attribute "text-anchor"


textDecoration :: ∀ msg. String -> Attribute msg
textDecoration =
    attribute "text-decoration"


textRendering :: ∀ msg. String -> Attribute msg
textRendering =
    attribute "text-rendering"


unicodeBidi :: ∀ msg. String -> Attribute msg
unicodeBidi =
    attribute "unicode-bidi"


visibility :: ∀ msg. String -> Attribute msg
visibility =
    attribute "visibility"


wordSpacing :: ∀ msg. String -> Attribute msg
wordSpacing =
    attribute "word-spacing"


writingMode :: ∀ msg. String -> Attribute msg
writingMode =
    attribute "writing-mode"
