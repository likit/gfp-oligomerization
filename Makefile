convert-excel-to-fasta:

	python raw-to-fasta.py Raw\ Data.xlsx.xlsx > gfp.faa

run-clustalw:

	clustalw2 -INFILE=gfp-tetramer.faa -TREE -BOOTSTRAP=100 -ALIGN \
		-TYPE=PROTEIN -OUTFILE=gfp-tetramer.clust.fasta -OUTPUT=FASTA \
		-OUTPUTTREE=phylip -SEED=1234 -CLUSTERING=NJ
