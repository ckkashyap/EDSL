{-# LANGUAGE GADTs #-}

import qualified Control.Monad.State as CMS

data Function = Function {
  functionName::FunctionName,
  functionType::FunctionType,
  functionStatements::[FunctionStatement]
  } deriving Show



newtype FunctionName = FunctionName String deriving Show

data FunctionType = FunctionType {
  fromTypes :: [DataType],
  toType :: DataType
  } deriving Show


data DataType = DataInt | Data Char deriving Show

data FunctionStatement = St1 | St2 deriving Show
  





