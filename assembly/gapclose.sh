ref=$1	# scaffolded assembly
LR_Gapcloser.sh -i $ref -l pass.fq.gz -s ont -t 10 -r 2 -o out -g 500 -v 500 -a 0.25
