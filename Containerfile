FROM ghcr.io/ublue/base-main:latest

RUN dnf install @cosmic-desktop-environment

# Add caddy cert to trusted certs for HTTPS
COPY root.crt /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust