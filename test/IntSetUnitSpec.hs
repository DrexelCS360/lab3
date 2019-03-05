module IntSetUnitSpec (
    main,
    spec
  ) where

import Test.Hspec

import IntSet

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "insert" $ do
    it "inserting into empty set produces singleton set" $
      insert 1 empty `shouldBe` fromList [1]

