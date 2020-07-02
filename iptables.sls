# ---------------------------------------------------------------------------- #
#           _____ _____ _______       ____  _      ______  _____               |
#          |_   _|  __ \__   __|/\   |  _ \| |    |  ____|/ ____|              |
#            | | | |__) | | |  /  \  | |_) | |    | |__  | (___                |
#            | | |  ___/  | | / /\ \ |  _ <| |    |  __|  \___ \               |
#           _| |_| |      | |/ ____ \| |_) | |____| |____ ____) |              |
#          |_____|_| _    |_/_/    \_\____/|______|______|_____/____           |
#                   | |            / ____|   | |/ ____| |     / ____|          |
#                   | |__  _   _  | (___   __| | (___ | |    | (___            |
#                   | '_ \| | | |  \___ \ / _` |\___ \| |     \___ \           |
#                   | |_) | |_| |  ____) | (_| |____) | |____ ____) |          |
#                   |_.__/ \__, | |_____/ \__,_|_____/|______|_____/           |
#                           __/ |                                              |
#                          |___/                                               |
# ---------------------------------------------------------------------------- #
# |- iptables 1.6.3                                                            |
# |- Rules by SdSLS                                                            |
# ---------------------------------------------------------------------------- #

# Define slstables
slstables=iptables

# Rules
slstables -I PREROUTING -t raw -p udp -j DROP
slstables -A PREROUTING -t raw -p udp -j DROP
slstables -I PREROUTING -t raw -p tcp -j DROP
slstables -A PREROUTING -t raw -p tcp -j DROP
slstables -I OUTPUT -t raw -p udp -j DROP
slstables -A OUTPUT -t raw -p udp -j DROP
slstables -I OUTPUT -t raw -p tcp -j DROP
slstables -A OUTPUT -t raw -p tcp -j DROP
slstables -p OUTPUT DROP
slstables -p FORWARD DROP
