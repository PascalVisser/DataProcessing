configfile: "config/config.yaml"

rule all:
    """ final rule """
    input: 'results/histogram.jpg'


rule make_histogram:
    """ rule that creates histogram from gene expression counts"""
    input:
        config["datadir_yeast"] + "out.csv"
    output:
         'results/histogram.jpg'
    shell:
        "Rscript scripts/histogram.R {input} {output}"

rule clean:
    shell:
        "rm -rf {rules.make_histogram.output}"