//#! usr/bin/env nextflow

include { fastqc } from './proc/fastqc.nf'
include { fastp } from './proc/fastp.nf'


ifile = Channel.fromFilePairs('./Data/LGE2484*{1,2}.fastq.gz')
       .view()
       .set {reads_ch}            

//fastqc (QC)

//fastp  

workflow{
       fastqc(reads_ch)

}










