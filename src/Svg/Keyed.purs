
-- | > A keyed node helps optimize cases where children are getting added, moved,
-- | > removed, etc. Common examples include:
-- | >
-- | >   - The user can delete items from a list.
-- | >   - The user can create new items in a list.
-- | >   - You can sort a list based on name or date or whatever.
-- | >
-- | > When you use a keyed node, every child is paired with a string identifier. This
-- | > makes it possible for the underlying diffing algorithm to reuse nodes more
-- | > efficiently.

module Svg.Keyed (node) where

import Elm.Default

import Control.Alternative (class Alternative, pure, (<|>))
import Data.Foldable (class Foldable)
import Elm.Json.Encode as Json
import Elm.Svg (Attribute, Svg)
import Elm.VirtualDom as VirtualDom


svgNamespace :: ∀ msg. Attribute msg
svgNamespace =
    VirtualDom.property "namespace" (Json.string "http://www.w3.org/2000/svg")


-- | Works just like `Svg.node`, but you add a unique identifier to each child
-- | node. You want this when you have a list of nodes that is changing: adding
-- | nodes, removing nodes, etc. In these cases, the unique identifiers help make
-- | the DOM modifications more efficient.
node ::
    ∀ f g msg. Alternative f => Foldable f => Foldable g =>
    String -> f (Attribute msg) -> g ( String /\ Svg msg ) -> Svg msg
node name =
    \attributes children ->
        VirtualDom.keyedNode name (pure svgNamespace <|> attributes) children
