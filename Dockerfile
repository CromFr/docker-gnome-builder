FROM fedora

RUN yum update -y \
	&& yum install -y dnf dnf-plugins-core \
	&& dnf copr -y enable bochecha/gnome-builder \
	&& dnf install -y gnome-builder

RUN useradd -u 1000 -d /home/dev -m dev

USER dev
ENV HOME /home/dev
CMD gnome-builder
