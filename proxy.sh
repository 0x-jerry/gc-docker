# mitmdump -s proxy.py -k
cd scripts && mitmdump -s proxy.py --ssl-insecure --set block_global=false —listen-port 8080