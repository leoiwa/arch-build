FROM manjarolinux/base:latest

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN date
RUN pacman -Syu --noconfirm
RUN pacman -S base-devel git gtk3 --noconfirm
RUN echo "[archlinuxcn]" >> /etc/pacman.conf && \
    echo "Server = https://repo.archlinuxcn.org/x86_64" >> /etc/pacman.conf
RUN pacman-key --init
RUN pacman -Syu --noconfirm && pacman -S --noconfirm archlinuxcn-keyring
RUN pacman -S --noconfirm yay

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

