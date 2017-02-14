FROM codingame/rust:1.15

RUN apt-get update && apt-get install -y --no-install-recommends \
		rsync \
	&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
