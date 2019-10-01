{ mkDerivation, base, hpack, sox, stdenv, synthesizer-core }:
mkDerivation {
  pname = "test-synthesizer-sox-nix";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [ base synthesizer-core ];
  executableSystemDepends = [ sox ];
  prePatch = "hpack";
  homepage = "https://github.com/thalesmg/test-synthesizer-sox-nix#readme";
  license = stdenv.lib.licenses.gpl3;
}
