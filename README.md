<h1>Tradingbot Template</h1>

<h2>Prerequisits</h2>
<p>This template is mostly made for myself, but I am adding this guide as I imagine this can be of use for other people as well. If you find this usefull, please </p>
<a href="https://github.com/jacksmithinsulander/twBotTemplate#pay-me">pay me</a>
<p>Anyway, let get into what you'll need in order to set this but template up:</p>
<ul>
	<li>A server</li>
	<li>A exchange account (or EVM wallet or something) with an API so that you can execute trades</li>
	<li>A tradingview account, unfortunatly you will have to use a payed account since you need the webhooks</li>
	<li>Some XMR</li>
	<li>A winning trading strategy</li>
</ul>
<h2>Server</h2>
<p>DON'T use linode or anthing stupid like that. The minimum criteria for a server to be decent is:</p>
<ol>
	<li>That there is no form of KYC upon registry.</li>
	<li>That you can pay with XMR.</li>
</ol>
<p>With these criterias in mind, the only humane alternative I've found is <a href="https://www.privex.io/">Privex</a>. If you really need me to clarify; </br> 
here you have my clarification that I am in no way associated with them. However I do think that it is vital to support organizations that truly fight for </br>
internet freedom and online privacy, and I think everyone should support them instead of stupid telemetry/KYC'd big tech, but I digress.</p>
<p>Make sure to buy a VPS with at least minimum 500mb RAM.</p>
<h2>Exchange</h2>
<p>I can't really tell you what to do here. If you're using an exchange make sure they have an API, and make sure you read the API documentation. As for the initial but template, I am using bybit.</br>
However this will change and I will instead add a setup for doing onchain bots, since CeFi sucks and kinda kills the purpose of crypto, so my recomendation is to try to set this up decentralized from the start. </br 
The only reason I am using bybit is because it plays well with <a href="https://github.com/ccxt/ccxt"> CCXT</a> which is making the setup really simple <br></p>
<h2>Setup</h2>
<p>This setup is assuming you've just gotten your Privex server and just SSH'ed into it using a tool like PuTTY:</p>
<p>The first thing you need to do is to install some dependencies:</p>
```
sudo apt update
sudo apt upgrade
sudo apt install git make python3 pip3 npm
```
<h2>TradingView</h2>
<h2>Pay me</h2>



