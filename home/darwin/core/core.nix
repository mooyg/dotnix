{pkgs, ...}: {
  home.packages = with pkgs; [
    kubectl
    yamlfmt
    helm-ls
    istioctl
    argocd
    lazygit
    kubectx
    inetutils
  ];
}
