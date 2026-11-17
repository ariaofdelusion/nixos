let
  nix-flatpak = fetchTarball {
    url = "https://github.com/gmodena/nix-flatpak/archive/refs/tags/v0.8.0.tar.gz";
    sha256 = "sha256:0i99r0avr8qi3m9sdmj4dfs4amsk4bwm5kj5jfmv00pppcipziis";
  };
in
{
  imports = [ "${nix-flatpak}/modules/nixos.nix" ];

  services.flatpak = {
    enable = true;
    packages = [
      "org.equicord.equibop"
      "com.protonvpn.www"
    ];
  };
}