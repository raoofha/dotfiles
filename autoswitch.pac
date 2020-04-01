function FindProxyForURL(url, host) {
	// our local URLs from the domains below example.com don't need a proxy:
	if (shExpMatch(host, "*.google.com")) { return "DIRECT"; }
	if (shExpMatch(host, "*.youtube.com")) { return "SOCKS5 127.0.0.1:9050"; }

	// URLs within this network are accessed through
	// port 8080 on fastproxy.example.com:
	//if (isInNet(host, "10.0.0.0", "255.255.248.0")) { return "PROXY localhost:9050"; }

	// All other requests go through port 8080 of proxy.example.com.
	// should that fail to respond, go directly to the WWW:
	return "SOCKS5 127.0.0.1:9050; DIRECT";
}
