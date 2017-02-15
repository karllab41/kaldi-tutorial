# Basic Decoding

We should now have all the components for mixtures. 

Take a look at making a graph with `mkgraph.sh`. This is a finite state transducer, phoneme sequences to word sequences. The LG refers to a dictionary based graph. So you would take the LG and then turn it to CLG.

After making the graph, .

Exact Lattice Generation by Dan Povey.

Language recoding with the lattice. The script, `lmrescore_const_arpa.sh`, reproduced two language models. This decodes using the language model and the rescores with the interpolation model.
![decode_lattice.txt](images/decode_rescore.png)
Decode with the SGMM, and then rescore with the lattice. The scores were built with the different models.

%WER. ins is insert errors. del are the deletion errors, and sub are substitution errors. ins and del should be roughly equal, or there may be some bias or some problems in the modeling. There is something called a word insertion penalty.
