snakemake   \
        --jobs 100 --use-conda -s EUKulele \
        --cluster-config EUKulele.yaml --cluster "sbatch --parsable --qos=unlim --partition={cluster.queue} --job-name=TARA.{rule}.{wildcards} --mem={cluster.mem}gb --time={cluster.time} --ntasks={cluster.threads} --nodes={cluster.nodes}"

