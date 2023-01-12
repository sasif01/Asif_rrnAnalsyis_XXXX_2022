# Creating Rules in Makefile (rules are composed of targets)
#target : prereq 1 prereq2 prereq3
#	recipe

data/referances/silva_seed/silva.seed_v138_1.align : code/get_silva_seed.sh
	./code/get_silva_seed.sh

data/raw/rrnDB-5.8_16S_rRNA.fasta : code/get_rrnDB_fasta.sh
	./code/get_rrnDB_fasta.sh rrnDB-5.8_16S_rRNA.fasta

data/raw/rrnDB-5.8_16S_rRNA.align : data/referances/silva_seed/silva.seed_v138_1.align
	./data/referances/silva_seed/silva.seed_v138_1.align\
			data/raw/rrnDB-5.8_16S_rRNA.fasta\
			
	./code/align_seq.sh
