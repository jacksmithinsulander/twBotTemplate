APT				:= sudo apt install
PIP3			:= pip3 install
NPM				:= sudo npm -g install
SYSTEMD_ENABLE	:= sudo systemctl enable
SYSTEMD_DISABLE	:= sudo systemctl disable
SYSTEMD_START	:= sudo systemctl start
SYSTEMD_STOP	:= sudo systemctl stop
SYSTEMD_RELOAD	:= sudo systemctl daemon-reload
SYSTEMD_RESTART := sudo systemctl restart
SERVICE_DIR		:= /etc/systemd/system/

RMV				:= sudo rm -rf
PIP_RMV			:= pip3 uninstall -y
NPM_RMV			:= npm uninstall

PIP_PKGS		:= ccxt flask python-dotenv 
NODE_PKGS		:= localtunnel

RBT				:= echo "rebooting now, ssh back in 5 minutes :)" && sudo reboot

ROOT_CP 		:= sudo cp

install:
	$(RMV) ${HOME}/twBotTemplate/xmrQR.png
	$(RMV) ${HOME}/twBotTemplate/webhookTW.png
	$(RMV) ${HOME}/twBotTemplate/LICENSE.md
	$(RMV) ${HOME}/twBotTemplate/README.md
	$(PIP3) $(PIP_PKGS)
	$(NPM) $(NODE_PKGS)
	$(ROOT_CP) /home/debian/twBotTemplate/localtunnel.service $(SERVICE_DIR) 
	$(ROOT_CP) /home/debian/twBotTemplate/trading-bot.service $(SERVICE_DIR)
	$(SYSTEMD_START) localtunnel
	$(SYSTEMD_ENABLE) localtunnel
	$(SYSTEMD_START) trading-bot
	$(SYSTEMD_ENABLE) trading-bot
	$(RBT)

clean:
	$(PIP_RMV) $(PIP_PKGS)
	$(NPM_RMV) $(NODE_PKGS)
	$(RMV) $(SERVICE_DIR)/localtunnel.service
	$(RMV) $(SERVICE_DIR)/trading-bot.service
	$(SYSTEMD_STOP) localtunnel 
	$(SYSTEMD_STOP) trading-bot
	$(SYSTEMD_RELOAD)

reload:
	$(SYSTEMD_RELOAD)
	$(SYSTEMD_RESTART) localtunnel
	$(SYSTEMD_RESTART) trading-bot

