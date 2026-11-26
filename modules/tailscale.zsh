source "$HOME/.dotfiles/lib/profile.zsh"

config() {
  if is_raspberry_pi; then
    echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
    echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
    sudo sysctl -p /etc/sysctl.d/99-tailscale.conf
    sudo tailscale set --ssh --advertise-exit-node
  fi
}

install() {
  curl -fsSL https://tailscale.com/install.sh | sh
}
