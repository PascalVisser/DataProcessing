 import os
configfile: "config/config.yaml"

from snakemake.remote.NCBI import RemoteProvider as NCBIRemoteProvider
NCBI = NCBIRemoteProvider(email="p.visser@st.hanze.nl")
ncbi_file = config["ncbi_file"]


rule download_NCBI:
    input:
        NCBI.remote(config["ncbi_file"], db="nuccore")
    output:
        "results/test.fasta"
    message: "NCBI file {ncbi_file} is being downloaded to {output}"
    shell:
        "mv {input} {output}"






