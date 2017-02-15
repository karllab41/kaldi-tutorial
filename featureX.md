Arks are called archives which is a file of files. It'll extract a. Then, it'll create an index. The file that contains the location is called feats.scp. In cmvn.scp is the exact. So, for example:

These will be stored in `kaldi/egs/iban/s5/data/train`.

cmvn.scp:
`ibf_002 /home/ubuntu/kaldi/egs/iban/s5/mfcc/cmvn_train.ark:8`

feats.scp:
`ibf_002_001 /home/ubuntu/kaldi/egs/iban/s5/mfcc/raw_mfcc_train.1.ark:12`
Is the first file 1 at location 12.

The prefix for file `cmvn.scp` stands for *cepstrum mean variance normalization*. The average tells something about the phone channel, a standard practice to subtract out the mean and scale out the variance.

For each speaker, this will be stored. The script that does this is. For each speaker (ibf_002 in the above example) is a key value pair. The key is the speaker ID, the value is where this is kept, stored in the value, for example `cmvn_train.ark`. The number It's a byte offset within the file.

For the MFCC itself, the features that are extracted and stored for each utterances.
