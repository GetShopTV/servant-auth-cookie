{ mkDerivation, base, base64-bytestring, blaze-html, blaze-markup
, bytestring, cereal, cookie, cryptonite, http-media, http-types
, HUnit, memory, mtl, servant, servant-server, stdenv, text, time
, transformers, wai, warp
}:
mkDerivation {
  pname = "servant-auth-cookie";
  version = "0.2.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base base64-bytestring bytestring cereal cookie cryptonite
    http-types memory servant servant-server time transformers wai
  ];
  executableHaskellDepends = [
    base blaze-html blaze-markup bytestring cereal cryptonite
    http-media mtl servant servant-server text wai warp
  ];
  testHaskellDepends = [ base HUnit ];
  description = "Authentication via encrypted cookies";
  license = stdenv.lib.licenses.gpl3;
}
