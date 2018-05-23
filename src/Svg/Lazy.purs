
-- | > Since all Elm functions are pure we have a guarantee that the same input
-- | > will always result in the same output. This module gives us tools to be lazy
-- | > about building `Svg` that utilize this fact.
-- | >
-- | > Rather than immediately applying functions to their arguments, the `lazy`
-- | > functions just bundle the function and arguments up for later. When diffing
-- | > the old and new virtual DOM, it checks to see if all the arguments are equal.
-- | > If so, it skips calling the function!
-- | >
-- | > This is a really cheap test and often makes things a lot faster, but definitely
-- | > benchmark to be sure!

module Elm.Svg.Lazy
    ( lazy, lazy_
    , lazy2, lazy2_
    , lazy3, lazy3_
    )
    where

import Elm.Svg (Svg)
import Elm.VirtualDom as VirtualDom
import Prelude (class Eq)


-- | > A performance optimization that delays the building of virtual DOM nodes.
-- | >
-- | > Calling `(view model)` will definitely build some virtual DOM, perhaps a lot of
-- | > it. Calling `(lazy view model)` delays the call until later. During diffing, we
-- | > can check to see if `model` is referentially equal to the previous value used,
-- | > and if so, we just stop. No need to build up the tree structure and diff it,
-- | > we know if the input to `view` is the same, the output must be the same!
lazy :: ∀ a msg. Eq a => (a -> Svg msg) -> a -> Svg msg
lazy =
    VirtualDom.lazy


-- | Like `lazy`, but without the `Eq` constraint.
lazy_ :: ∀ a msg. (a -> Svg msg) -> a -> Svg msg
lazy_ =
    VirtualDom.lazy_


-- | > Same as `lazy` but checks on two arguments.
lazy2 :: ∀ a b msg. Eq a => Eq b => (a -> b -> Svg msg) -> a -> b -> Svg msg
lazy2 =
    VirtualDom.lazy2


-- | Like `lazy2`, but without the `Eq` constraint.
lazy2_ :: ∀ a b msg. (a -> b -> Svg msg) -> a -> b -> Svg msg
lazy2_ =
    VirtualDom.lazy2_


-- | > Same as `lazy` but checks on three arguments.
lazy3 :: ∀ a b c msg. Eq a => Eq b => Eq c => (a -> b -> c -> Svg msg) -> a -> b -> c -> Svg msg
lazy3 =
    VirtualDom.lazy3


-- | Like `lazy3`, but without the `Eq` constraint.
lazy3_ :: ∀ a b c msg. (a -> b -> c -> Svg msg) -> a -> b -> c -> Svg msg
lazy3_ =
    VirtualDom.lazy3_
