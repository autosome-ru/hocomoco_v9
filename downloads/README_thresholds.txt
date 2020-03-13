HOCOMOCOv9 threshold files description

All thresholds files for HOCOMOCOv9 contain following columns:
thresh	P-value	%words	%seq	Nwords	Nseq	total_words	total_seq

Detailed description:

thresh
 - a threshold for PWM score

P-value
 - corresponding P-value (the fraction of words scoring no less than the threshold)

%words
 - the percentage of words (from the total list of aligned words used to construct the matrix) 
   scoring no less than the threshold

%seq
 - the percentage of sequences (in the initial training set) 
   having PWM hits scoring no less than the threshold

Nwords
 - the number of words (from the total list of aligned words used to construct the matrix)
   scoring no less than the threshold

Nseq
 - the number of sequences (in the initial training set) 
   having PWM hits scoring no less than the threshold

total_words
 - the size of the total list of aligned words used to construct PWM

total_seq
 - the size of the total list of sequences used for motif discovery

 
When comparining numbers in total_seq and total_words:
  NOTE! Some sequences can raise more than 1 word (or no words at all) to be included into the alignment.
  NOTE! Some sequences can be too short to be included into the motifs.
  
When compairing Nwords and Nseq:
  NOTE! After PWM renormalization (either to uniform or hg19 background) 
  some sequences can have better PWM hits than the words initially included into the motifs.
  So it is OK when Nseq != Nwords or Nseq > Nwords or Nseq < Nwords.
