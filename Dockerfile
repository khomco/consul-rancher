FROM gliderlabs/consul-agent:0.6

ADD https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_web_ui.zip /tmp/webui.zip
RUN cd /tmp && unzip /tmp/webui.zip && mv dist /ui && rm /tmp/webui.zip

ADD entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
