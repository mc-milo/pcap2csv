# this is a pcap 2 csv that runs in docker

to use the docker image please

```bash
docker pull ghcr.io/vmillios/pcap2csv:latest
docker run --rm -v folder_with_pcap_files:/app/pcaps ghcr.io/vmillios/pcap2csv:latest
```

wait for a while cause it takes ~ 45 min per file (~2GB in size)
you have the csv ready
