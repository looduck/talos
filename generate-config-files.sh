talosctl gen config test-ecs-cluster https://192.168.123.210:6443 \
  --with-secrets secrets.yaml \
  --config-patch @patches/allow-controlplane-workloads.yaml \
  --config-patch @patches/disable-kube-proxy-no-cni.yaml \
  --config-patch @patches/dhcp.yaml \
  --config-patch @patches/install-disk.yaml \
  --config-patch @patches/interface-names.yaml \
  --config-patch @patches/kubelet-certificates.yaml \
  --config-patch-control-plane @patches/vip.yaml \
  --output rendered/ \
  --force
  