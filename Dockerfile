FROM pataquets/tor

RUN \
  cat \
    /etc/tor/conf-available/common/* \
    /etc/tor/conf-available/client/SocksPort-Disable \
    /etc/tor/conf-available/relay/BridgeRelay-On \
    /etc/tor/conf-available/relay/ExitPolicy-RejectAll \
    /etc/tor/conf-available/relay/ORPort \
    /etc/tor/conf-available/relay/ORPort-443 \
    | tee -a /etc/tor/torrc | nl
