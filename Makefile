APT				:= sudo apt install
PIP3			:= pip3 install
NPM				:= sudo npm -g install
SYSTEMD_ENABLE	:= sudo systemctl enable
SYSTEMD_START	:= sudo systemctl start
SYSTEMD_RELOAD	:= sudo systemctl daemon-reload
SERVICE_DIR		:= /etc/systemd/system/

RMV				:= sudo rm -rf
PIP_RMV			:= pip3 uninstall -y
NPM_RMV			:= npm uninstall

PIP_PKGS		:= ccxt flask python-dotenv 
NODE_PKGS		:= localtunnel

ROOT_CP 		:= sudo cp

install:
	$(RMV) ${HOME}/twBotTemplate/xmrQR.png
	$(RMV) ${HOME}/twBotTemplate/webhookTW.png
	$(RMV) ${HOME}/twBotTemplate/LICENSE.md
	$(RMV) ${HOME}/twBotTemplate/README.md
	$(PIP3) $(PIP_PKGS)
	$(NPM) $(NODE_PKGS)
	$(ROOT_CP) ${HOME}/twBotTemplate/localtunnel.service $(SERVICE_DIR) 
	$(ROOT_CP) ${HOME}/twBotTemplate/trading-bot.service $(SERVICE_DIR)

clean:
	$(PIP_RMV) $(PIP_PKGS)
	$(NPM_RMV) $(NODE_PKGS)
	$(RMV) $(SERVICE_DIR)/localtunnel.service
	$(RMV) $(SERVICE_DIR)/trading-bot.service
