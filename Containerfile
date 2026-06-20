FROM ghcr.io/ublue-os/base-main:latest

RUN dnf install -y @cosmic-desktop-environment

# Add caddy cert to trusted certs for HTTPS
COPY root.crt /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust