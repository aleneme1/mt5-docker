FROM vmlellis/mt5-base
MAINTAINER cloud-vps.pro <admin@cloud-vps.pro>

USER xclient

RUN echo "WINEPREFIX=~/.wine32 wine ~/.wine32/drive_c/Program\ Files/MetaTrader\ 5/terminal.exe" >> ~/mt5.sh
RUN echo "alias mt5='WINEPREFIX=~/.wine32 wine ~/.wine32/drive_c/Program\ Files/MetaTrader\ 5/terminal.exe'" >> ~/.bashrc
CMD ~/mt5.sh
