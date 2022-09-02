FROM prom/prometheus:latest
ENV HW_HOME=/etc/prometheus 
ADD prometheus.yml $HW_HOME/
WORKDIR $HW_HOME
CMD        [ "--config.file=/etc/prometheus/prometheus.yml"]
CMD        ["--storage.local.path=/prometheus"]
CMD        ["--web.console.libraries=/etc/prometheus/console_libraries"]
CMD        ["--web.console.templates=/etc/prometheus/consoles"]
EXPOSE 9090

