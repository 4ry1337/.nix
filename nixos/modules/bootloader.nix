{
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber= true;
    };
  };

  boot.supportedFilesystems = [ "ntfs" ];

  fileSystems."/mnt" =
    { device = "/dev/nvme0n1p3";
      fsType = "ntfs-3g";
      options = [ "rw" "uid=1000" "gid=100" "umask=0022" "fmask=0022" "dmask=0022"];
    };
}
