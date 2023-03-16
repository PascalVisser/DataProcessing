configfile: "config/config.yaml"

rule all:
    input:
        "results/yeast_expression_heatmap.jpg"

rule create_heatmap:
    input:
        config["datadir_yeast"] + "gene_ex.csv"
    output:
        "results/yeast_expression_heatmap.jpg"
    shell:
        "Rscript scripts/heatmap_script.R {input} {output}"

rule clean:
    shell:
        "rm -rf {rules.create_heatmap.output}"