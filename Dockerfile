FROM condaforge/mambaforge:24.3.0-0

RUN mamba install -c conda-forge boa anaconda-client conda-verify

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
