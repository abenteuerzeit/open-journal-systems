{ pkgs }: {
	deps = [
   pkgs.php82Packages.composer
   pkgs.nano
   pkgs.systemd
   pkgs.vim
     pkgs.php82
	pkgs.apacheHttpd
	pkgs.mysql
  ];
}
