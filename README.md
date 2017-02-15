# Kaldi Tutorial
Building Speech Recognition Systems with the Kaldi Toolkit  
February 15, 2017  

[Website for the Materials](http://kaldi-asr.org/ibt.html)

For the run-down through the slides, the order is:

1. [Data Preparation](chapters/dataprep.md)
2. [Feature Extraction](chapters/featureX.md)
3. [Dictionary Creation](chapters/dictionary.md)
4. [Language Modeling](chapters/language-model.md)
5. [Gaussian Mixture Modeling](chapters/gaussian-mixtures.md)
6. [Basic Decoding](chapters/decoding.md)
7. [Basic DNN System](chapters/dnn.md)

## The History of Kaldi

Not having enough transcribed speech. The ARPA(s), NSF, Facebook, and Google helped fund a workshop in 2010, together with Dan Povey, Lukas Burget, and many others. After the workshop, Kaldi grew, and the number of users of have grown.


NIST TREC SDR. Meanwhile, in 1998 broadcast news had transcription. If you searched for it. But, in the IC, NIST STD Pilot (2006). Anchors are seasoned speakers and pronounced. But what about telephone conversations were very difficult. The second issue was that there was limited languages. Thus, 2012 IARPA launched Babel a month after Dan Povey returned to Kaldi's birthplace. The focus: transcribe conversational telphone speech but with a few subtle changes. Focus on low-resource conditions. Concurrent progress in multiple languages, with keyword search as a metric and task. That's where Kaldi got a big boost.

And unofficially, ten teams did well, and everyone use it. And IBM didn't use Kaldi. In Singapore, they pretty much used Kaldi's recipes and beat.


## Kaldi Today

Right now, it's a C++ library with "recipes". Recipes are sets of shell scripts that are sequences and steps. How you build your system, depends on recipe, you may want to use tools in a different ways based on whether or not there are tones or clicks. Even if you were an expert, you'd have a difficult time. So what you would do, you'd use different recipes focused on different things.

For example, when Kaldi was created, far-field wasn't created. The code-base called AMI, the standard recipe didn't do well. There's a switchboard recipe that works for AMI. There is a Babel recipe that works. They're all in the Github link. That's what Kaldi. There are a bunch of libraries, and then there are recipes. It's like legos. You can build things on your own, or you can build it according to recipes.

Top STT performance in open benchmark tests.

It's widely adopted in academia and industry, and unofficially. The Amazon Echo is built entirely from this. Siri, the new one, is going to use Kaldi. Call centers are converting to Kaldi, originating monitoring emerging problems with products. 3-4 engineers were able to do it in a few months based on Amazon cloud. On the order 100k calls per day. Small groups can build commercially viable systems.

There's a main "trunk" maintained by JHU, owned by Dan Povey. And several forks offed, where people had several ideas. The lore is that Microsoft didn't want him to do open source, so he left. When he tried to make big changes. When he updated, it started getting bureacratically difficult, and so he just left.

## Building an STT System with Kaldi

The first thing to do is data preparation, setting up things into a format into a way that can be ingested into Kaldi. This will be different for different purposes. The good thing about IARPA Babel, there are 25 languages, all exactly the same format.

A few of the standard were: GMM. Then, the neural nework revolution in 2012 took hold use DNN's and RNN's. But many items still use GMMs right now. Acoustic models want to know which, so they need the exact alignment. So for every neural network, 10ms frames designate a phoneme. No one's going to do that aligment manually. So what you'd do is the GMM to do the alignment frame by frame, because that's what's fed into the RNN's. And until 2012, they were state of the art. In low-resource languages, they *still are low resource languages*. RNNs work better after 12 hours of data. They might be most useful. In fact, spoiler alert, they do.

For basic GMM model, there are acoustic model training and language model training. There is the idea of *context*. The "a" in "cat" is vrey different than the "a" in "man". That changes the acoustic model for "man". We don't build a phoneme for "a", but we'd build in the *context* of "man" or "cat". There are 16,000 different combinations of "a", but the detailed modeling doesn't do. That's system design for language model training. Language models differ from language models in conversation. Whatever conversation. So you take models from one and models from another. Then you kind of interpolate them and mix them.

Basic decoding: lattice rescoring. Models can be transferred pretty easily. Between agency, it's much easier to share models due to restrictions, etc. For example if things are classified because it was derived from data. For these, we'd use.

And then, of course, DNN system building. This should give an exposure for all the underlying code. These are going beyond the basics. Very recently, called them chain models. 

## The Data from IARPA

International speech community organized a corpus free of copyright and restrictions, created a year ago towards a workshop on low-resource languages and free, located at the [OpenSLR website](http://www.openslr.org/24/). It's based on [Iban](https://en.wikipedia.org/wiki/Iban_language). Pronunciation is also available, i.e. phonemes, etc..



