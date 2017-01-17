FROM ubuntu:16.04
MAINTAINER marton bognar <martonbognar@sch.bme.hu>

RUN apt update -y && apt install -y texlive-xetex texlive-latex-extra lmodern texlive-latex-recommended xzdec texlive-fonts-recommended

CMD tlmgr init-usertree
CMD tlmgr option repository ftp://tug.org/historic/systems/texlive/2015/tlnet-final
CMD tlmgr update --all
CMD tlmgr install etoolbox tcolorbox framed polyglossia hyperref pgf xcolor

WORKDIR /sources
VOLUME ["/sources"]
