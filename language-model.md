Preparing the language model:

prepare_lang.sh <dictionary> "<UNK>" data/local/lang data/lang

Looking at `prepare_lm.sh`:

It takes data/train/text and data/ and puts it in data/srilm.

Build the language model of training text. Then, build the language model of the external text. Then interpolate the two.

Interpolated Language Model

 There's an option `-mix-lm`. On this note, Dan Povey points out that these language models don't perform very well when compared of RNNs. Mikolov has one for RNNs, but it is slow, and it's difficult to use. He's working on one for RNNs.
