configfile: "config/config.yaml"
url = config["http_url"]


rule download_http:
    output:
        "results/test.txt"
    message: "input in being dowloaded from {url}"
    shell:
        "wget -P results/ {url}"

