# snp125.sql was originally generated by the autoSql program, which also 
# generated snp125.c and snp125.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Polymorphism data from dbSnp database 
CREATE TABLE snp125 (
    bin           smallint(5) unsigned not null,
    chrom         varchar(15) not null,			# Chromosome
    chromStart    int(10) unsigned not null,		# Start position in chrom
    chromEnd      int(10) unsigned not null,		# End position in chrom
    name          varchar(15) not null,			# Reference SNP identifier 
    score         smallint(5) unsigned not null,	# Not used
    strand        enum('?','+','-') default '?' not null,	# Which DNA strand contains the observed alleles
    refNCBI       blob not null,			# Reference genomic
    refUCSC       blob not null,			# Reference genomic
    observed      varchar(255) not null,		# The sequences of the observed alleles
    molType       enum( 'unknown', 'genomic', 'cDNA') DEFAULT 'unknown' not null,
    					# Sample type from exemplar ss
    class         enum('unknown', 'single', 'in-del', 'het', 'microsatellite',
                  'named', 'no var', 'mixed', 'mnp', 'insertion', 'deletion')  DEFAULT 'unknown' NOT NULL,
    					# The class of variant

    valid      	  set('unknown', 'by-cluster', 'by-frequency', 'by-submitter', 'by-2hit-2allele', 'by-hapmap') 
                                        DEFAULT 'unknown' NOT NULL,
    					# The validation status of the SNP

    avHet 	  float not null,	# The average heterozygosity from all observations
    avHetSE 	  float not null,	# The Standard Error for the average heterozygosity

    func          set( 'unknown', 'locus', 'coding', 'coding-synon', 'coding-nonsynon', 
    		       'untranslated', 'intron', 'splice-site', 'cds-reference') 
		     DEFAULT 'unknown' NOT NULL,
    			# The functional category of the SNP

   locType        enum( 'unknown', 'range', 'exact', 'between', 
   		  'rangeInsertion', 'rangeSubstitution', 'rangeDeletion') DEFAULT 'unknown' NOT NULL,

   weight         int unsigned not null     # The quality of the alignment


);
