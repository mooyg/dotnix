{pkgs, ...}: {
  home.packages = with pkgs; [
    prettierd
    kubectl
    yamlfmt
    helm-ls
    istioctl
    argocd
    lazygit
    kubectx
  ];
}
