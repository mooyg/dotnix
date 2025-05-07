{pkgs, ...}: {
  home.packages = with pkgs; [
    kubectl
    yamlfmt
    helm-ls
    istioctl
    argocd
    kubectx
    inetutils
    kustomize
    ktop
  ];
}
