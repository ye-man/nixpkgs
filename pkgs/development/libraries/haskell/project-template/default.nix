{ cabal, base64Bytestring, conduit, conduitExtra, hspec, mtl
, QuickCheck, resourcet, systemFileio, systemFilepath, text
, transformers
}:

cabal.mkDerivation (self: {
  pname = "project-template";
  version = "0.1.4.1";
  sha256 = "1vsx8a4kzdcwbdy47hb2wz32najsa6bqq6jkyal9nbc5ydwb65lb";
  buildDepends = [
    base64Bytestring conduit conduitExtra mtl resourcet systemFileio
    systemFilepath text transformers
  ];
  testDepends = [
    base64Bytestring conduit hspec QuickCheck resourcet systemFilepath
    text transformers
  ];
  meta = {
    homepage = "https://github.com/fpco/haskell-ide";
    description = "Specify Haskell project templates and generate files";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
