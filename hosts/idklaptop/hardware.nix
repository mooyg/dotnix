{
  modulesPath,
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];
  boot.initrd.availableKernelModules = ["xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel"];
  boot.extraModulePackages = [];

  fileSystems."/" = {
    fsType = "ext4";
    device = "/dev/disk/by-uuid/7da0f6a3-2e17-4cf4-bf7d-b6d7f1881af4";
  };
  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/5FF7-9179";
    fsType = "vfat";
    options = ["fmask=0022" "dmask=0022"];
  };
  swapDevices = [];
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
