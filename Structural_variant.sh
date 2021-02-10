for i in {380..574}; do bwa mem -t 64 ../../reference/All_peaks.fa ERR2219$i\_1_trimmed.fastq ERR2219$i\_2_trimmed.fastq > ../3_aligned/ERR2219$i.sam
samtools view -@ 64 -bS ../3_aligned/ERR2219$i.sam > ../3_aligned/ERR2219$i.bam
samtools sort -@ 64 ../3_aligned/ERR2219$i.bam ERR2219$i.sorted
../../programs/gatk-4.1.9.0/gatk MarkDuplicates --INPUT ERR2219$i.sorted.bam --OUTPUT ERR2219$i\_dup_marked.bam --METRICS_FILE ../qa/ERR2219$i\_dup_metrics.txt
../../programs/gatk-4.1.9.0/gatk AddOrReplaceReadGroups --INPUT ERR2219$i\_dup_marked.bam --OUTPUT ERR2219$i\_dup_marked_add.bam --RGPL Illumina_HiSeq_2500 --RGLB Targeted-Capture --RGPU ERR2219$i --RGSM $i
samtools index ERR2219$i\_dup_marked_add.bam
../../programs/gatk-4.1.9.0/gatk StructuralVariantDiscoverer --reference ../../reference/All_peaks.fa --input ERR2219$i\_dup_marked_add.bam --outputVCFName ../4_structual_variants/ERR2219$i.vcf
rm ../3_aligned/ERR2219$i.sam
rm ../3_aligned/ERR2219$i.bam
rm ERR2219$i.sorted.bam
rm ERR2219$i\_dup_marked.bam
rm ERR2219$i\_dup_marked_add.bam
rm ERR2219$i\_dup_marked_add.bam.bai;done