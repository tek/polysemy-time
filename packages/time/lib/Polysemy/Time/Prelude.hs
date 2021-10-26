{-# options_haddock hide #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Polysemy.Time.Prelude (
  module Polysemy.Time.Prelude,
  module Data.Foldable,
  module Data.Kind,
  module GHC.Err,
  module Polysemy,
  module Polysemy.AtomicState,
  module Polysemy.Time.Debug,
  module Relude,
) where

import qualified Data.Aeson as Aeson
import Data.Aeson.TH (deriveJSON)
import Data.Fixed (div')
import Data.Foldable (traverse_)
import Data.Kind (Type)
import GHC.Err (undefined)
import qualified Language.Haskell.TH.Syntax as TH
import Polysemy (
  Effect,
  EffectRow,
  Embed,
  Final,
  InterpreterFor,
  Member,
  Members,
  Sem,
  WithTactics,
  embed,
  embedToFinal,
  interpret,
  makeSem,
  pureT,
  raise,
  raiseUnder,
  raiseUnder2,
  raiseUnder3,
  reinterpret,
  runFinal,
  )
import Polysemy.AtomicState (AtomicState, atomicGet, atomicGets, atomicModify', atomicPut, runAtomicStateTVar)
import Relude hiding (
  Reader,
  State,
  Sum,
  Type,
  ask,
  asks,
  evalState,
  filterM,
  get,
  gets,
  hoistEither,
  modify,
  modify',
  put,
  readFile,
  runReader,
  runState,
  state,
  trace,
  traceShow,
  undefined,
  )

import Polysemy.Time.Debug (dbg, dbgs, dbgs_)

unit ::
  Applicative f =>
  f ()
unit =
  pure ()
{-# inline unit #-}

basicOptions :: Aeson.Options
basicOptions =
  Aeson.defaultOptions {
    Aeson.fieldLabelModifier = dropWhile ('_' ==)
  }

jsonOptions :: Aeson.Options
jsonOptions =
  basicOptions {
    Aeson.unwrapUnaryRecords = True
  }

defaultJson :: TH.Name -> TH.Q [TH.Dec]
defaultJson =
  deriveJSON jsonOptions
{-# inline defaultJson #-}

safeDiv ::
  Real a =>
  Integral a =>
  a ->
  a ->
  Maybe a
safeDiv _ 0 =
  Nothing
safeDiv n d =
  Just (n `div'` d)
{-# inline safeDiv #-}

divOr0 ::
  Real a =>
  Integral a =>
  a ->
  a ->
  a
divOr0 l r =
  fromMaybe 0 (safeDiv l r)
{-# inline divOr0 #-}
