# Um script que automatiza a coleta de evidências de um sistema comprometido para análise forense posterior.

#!/bin/bash
output_dir="/evidencias"
log_file="/var/log/syslog"

mkdir -p "$output_dir"
cp "$log_file" "$output_dir/syslog_copia.log"
echo "Evidências coletadas em $output_dir"
