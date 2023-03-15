configfile: "config/config.yaml"
merge_url = config["merge_url"]


rule download_files:
    output:
        temp("data/{sample}.bam")
    message: "sample files are downloaded for {merge_url}"
    shell:
        "wget {merge_url}{wildcards.sample}.bam -O {output}"

rule merge:
    input:
        expand("data/{sample}.bam", sample=config["samples"])
    output:
        "results/merged_files.bam"
    message: "performing merge on : {input}"
    shell:
        "samtools merge {output} {input}"


