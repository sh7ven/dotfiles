# syntax=docker/dockerfile:1
FROM archlinux:latest

# necessary deps
RUN <<EOT
pacman -Syu --noconfirm base-devel
pacman -S --noconfirm gcc gmp mpfr expat zlib wget vim
pacman -S --noconfirm dejagnu
pacman -S --noconfirm less man man-db
EOT

# volume 
WORKDIR /contrib

# RUN <<EOT
# git clone https://sourceware.org/git/binutils-gdb.git source-orig
# EOT
