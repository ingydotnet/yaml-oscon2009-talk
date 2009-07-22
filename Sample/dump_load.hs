{-1};system(qq[pugs-DrIFT "$ARGV[0]" -o "$ARGV[1]"]);<<'--'
-}{-# OPTIONS_GHC -pgmFperl -F -optFdump-load.hs #-}
{-# LANGUAGE DeriveDataTypeable, PatternGuards #-}

import Control.Monad
import Data.Typeable
import Data.Yaml.Syck
import DrIFT.YAML

data Person = Person
    { name   :: String
    , number :: Int
    , needs  :: [String]
    } deriving Typeable {-!derive: YAML!-}

object1 = Person
    { name   = "Ingy dot Net"
    , number = 42
    , needs  = [ "sex", "drugs", "rock and roll" ]
    }

main = do
    yaml1 <- toYamlString object1
    object2 <- fromYamlString yaml1
    yaml2 <- toYamlString (object2 :: Person)
    if yaml1 == yaml2
        then putStr yaml1
        else fail $ yaml1 ++ "!=\n" ++ yaml2

--
