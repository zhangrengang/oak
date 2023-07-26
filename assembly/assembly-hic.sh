ENZYME=DpnII
GENOME=ref
REF=ref.fa	# soft link to contig-level assembly
JUICER_HOME=/bin/juicer/UGER

generate_site_positions.py $ENZYME $GENOME $REF

bwa index $REF

$JUICER_HOME/scripts/juicer.sh -s $ENZYME -y $GENOME\_$ENZYME.txt -z $REF -D $JUICER_HOME -p $REF.chrom.sizes -t 100

/bin/3d-dna/run-asm-pipeline.sh --early-exit -m haploid -i 150000 -r 0 $REF aligned/merged_nodups.txt

