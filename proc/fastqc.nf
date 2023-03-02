process fastqc{
memory '4 GB'
tag "FastQC_before $reads"
publishDir("outdir_fastqc_before/${sample_id}", mode:'copy')

input:
tuple val(sample_id), path(reads)

output:
path "fastqc_${sample_id}_logs"

script:
"""
mkdir fastqc_${sample_id}_logs
fastqc -o fastqc_${sample_id}_logs -t 8 ${reads}
"""
}
