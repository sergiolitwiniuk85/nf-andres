process fastp{

       tag "$sample_id"

       def phred

       input:
       tuple val(sample_id), path(reads)
   

       output:


       script:

        """
        fastp -i -o -I -O  -q 40 -w 8 --html filename       
        """

}
