wg genkey | tee private | wg pubkey > public
sudo ip link add wg0 type wireguard 
sudo ip addr add 10.0.5.2/24 dev wg0
sudo wg set wg0 private-key ./private
sudo ip link set wg0 up
cat public
