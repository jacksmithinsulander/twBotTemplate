APT				:= sudo apt install
PIP3			:= pip3 install
NPM				:= sudo npm -g install
SYSTEMD_ENABLE	:= sudo systemctl enable
SYSTEMD_START	:= sudo systemctl start
SYSTEMD_RELOAD	:= sudo systemctl daemon-reload

RMV				:= rm -rf

PIP_PKGS		:= ccxt flask python-dotenv 
NODE_PKGS		:= localtunnel

install:
	$(RMV) ${HOME}/twBotTemplate/xmrQR.png
	$(RMV) ${HOME}/twBotTemplate/webhookTW.png
	$(RMV) ${HOME}/twBotTemplate/LICENSE.md
	$(RMV) ${HOME}/twBotTemplate/README.md



