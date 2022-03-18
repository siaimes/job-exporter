
FROM openpai/job-exporter:v1.8.0
RUN git clone --branch gpu_used_by_external_process_count https://github.com/siaimes/pai.git

FROM openpai/job-exporter:v1.8.0
COPY --from=0 pai/src/job-exporter/src/collector.py /job_exporter/collector.py
