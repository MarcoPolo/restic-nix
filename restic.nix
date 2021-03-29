{ pkgs ? import <nixpkgs> { } }:
pkgs.buildGoModule rec {
  pname = "restic";
  version = "0.12.0";

  src = pkgs.fetchFromGitHub {
    owner = "restic";
    repo = "restic";
    rev = "v${version}";
    sha256 = "sha256-bi3RhVJD6RAtbd9M44OH06doikk527azEvIV8kxx/R0=";
  };

  vendorSha256 = "sha256-P7ABWRU9ig+33EEMchibwLoUh134UhWMzQGZ1ioV4pM=";
  subPackages = [ "cmd/restic" ];
  doCheck = false;
  meta = with pkgs.lib; {
    description = "Restic backups";
    homepage = "https://github.com/restic/restic";
    license = licenses.bsd2;
  };

}
