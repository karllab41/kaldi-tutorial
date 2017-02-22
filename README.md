# Kaldi Tutorial
Building Speech Recognition Systems with the Kaldi Toolkit  
February 15, 2017  

[Website for the Materials](http://kaldi-asr.org/ibt.html)

Kaldi is actually the name of a legendary Ethiopian goat herder who discovered coffee, and its logo is a coffee bean with headphones. Kaldi is a C++ library with command line tools, and most importantly, "recipes", freely available via [Github](https://github.com/kaldi-asr/kaldi) in an Apache 2.0 license. It has gotten top STT performance in open benchmark tests, received 300+ citations in 2014 based on Google Scholar, 400+ citations in 2015, and about 500 in 2016.

Kaldi played a big role in the IARPA Babel program and subsequent follow-ons like IARPA ASPiRE. This Github page are notes taken from a non-user (myself) during the class, which ran for a single day and went through a single example. The basic organization through the class is:

1. [Data Preparation](chapters/dataprep.md)
2. [Feature Extraction](chapters/featureX.md)
3. [Dictionary Creation](chapters/dictionary.md)
4. [Language Modeling](chapters/language-model.md)
5. [Gaussian Mixture Modeling](chapters/gaussian-mixtures.md)
6. [Basic Decoding](chapters/decoding.md)
7. [Basic DNN System](chapters/dnn.md)

## The History of Kaldi

The community was aware that while high-resource languages like English and Chinese were abundant in transcribed and labeled data, literally any other language was severely limited in the amount of transcribed speech that can be leveraged to build recognition systems. In light of this problem, the ARPA(s), NSF, Facebook, and Google helped fund a workshop in 2010, together with Dan Povey, Lukas Burget, and many others to build an open source platform to help researchers explore the problem of speech to text, and it is because of this, Kaldi was born. After the workshop, as Kaldi grew in functionality and flexibility, the number of users of have grown across the local community as well as internationally.

Regarding speech to text (STT) specifically, NIST had initially formulated several datasets and challenges around TREC SDR, the Spoken Document Retrieval (SDR) problem. In 1998, broadcast news was entirely transcribed, and data was scraped from these sources. The performers so well on SDR that it was deemed a solved problem until 2006, where if you searched for a key term that a broadcaster mentioned, retrieval from STT was as good as retrieval from reference transcripts. 

The problem of speech search and STT was, in fact, far from solved as in the intelligence community (IC), conversational speech was exceedingly difficult to process and make use of. In the original challenge, anchors were seasoned speakers and pronounced words differently than how conversational speech sounds. Error rates were unacceptably high, and prompted a second research program focusing on telephone conversations: the NIST STD Pilot (2006). Through the pilot, it was discovered that STT was found to be inadequate for spoken term detection (STD). The conversational tone and speech patterns were the first issue that the challenge contended with. The second issue was the limited language diversity in the corpus. 

Thus, 2012 IARPA launched Babel a month after Dan Povey returned to Kaldi's birthplace after leaving Microsoft. For IARPA, IC priorities, including data, methods, and metrics, were used to build systems for recognizing keyword search, using limited and realistic situations over many languages. The problem was to transcribe conversational telphone speech but with a few subtle changes. The focus was on low-resource conditions. Concurrent progress was to be made in multiple languages, with keyword search as a metric and task. It is during the IARPA Babel program where Kaldi got a big boost.

Unofficially, ten teams did well, perhaps because everyone except for IBM started with the baseline of Kaldi. In Singapore, one of the top performers, Kaldi recipes were exclusively used and beat out many other performers.


## Kaldi Today

Kaldi is a C++ library with "recipes". Recipes are sets of shell scripts that are sequences and steps that instruct on how you build your system. The application depends on recipe, you may want to use tools in a different ways based on the situation. For example, whether or not there are tones or clicks in the language, you will want to adjust your recipe to use different clustering parameters. For this reason, even if you were an expert, you'd have a difficult time deciding the parameters. Recipes are designed through experimentation to be target these different attributes, and you'd use different recipes focused on different things.

For example, when Kaldi was created, far-field language retrieval wasn't effectively implemented. A database called AMI (a corpus consisting of 100 hours of meeting recordings) was poorly accomodated for by Kaldi. That is to say, the standard recipe didn't do well. Now, there's a switchboard recipe that works for AMI. Likewise, there are several Babel recipe that work. These are all in the Github link. 

That's how Kaldi was explained to me. The TL;DR version; there are a bunch of libraries, and then there are recipes. Like legos, you can build things on your own, or you can build it according to recipes.

## Kaldi's Reach

Kaldi now has top STT performance in several open benchmark tests. It's widely adopted in academia and industry, and unofficially, the Amazon Echo is built entirely from this. Siri, in its new iteration, is going to use Kaldi. Call centers are converting to Kaldi, a problem which originated from monitoring emerging problems with products. It was found that 3-4 engineers were able to build complex systems in a few months with Kaldi on Amazon cloud. These systems take in on the order 100k calls per day. That's the mantra: small groups can build commercially viable systems.

There's a main "trunk" maintained by JHU, owned by Dan Povey, and several forks were created as many people had several ideas on its direction. Povey, again, left Microsoft to return to JHU, where is on faculty, and the lore is that he left Microsoft because they made it difficult to contribute to open source. When he tried to make big changes. When he updated, it started getting bureacratically difficult, and so he just left.

## Building an STT System with Kaldi

The first thing to do is data preparation, setting up things into a format into a way that can be ingested into Kaldi. This will be different for different purposes. The good thing about IARPA Babel, there are 25 languages, all exactly the same format.

A few of the standard were: GMM. Then, the neural nework revolution in 2012 took hold use DNN's and RNN's. But many items still use GMMs right now. Acoustic models want to know which, so they need the exact alignment. So for every neural network, 10ms frames designate a phoneme. No one's going to do that aligment manually. So what you'd do is the GMM to do the alignment frame by frame, because that's what's fed into the RNN's. And until 2012, they were state of the art. In low-resource languages, they *still are low resource languages*. RNNs work better after 12 hours of data. They might be most useful. In fact, spoiler alert, they do.

For basic GMM model, there are acoustic model training and language model training. There is the idea of *context*. The "a" in "cat" is vrey different than the "a" in "man". That changes the acoustic model for "man". We don't build a phoneme for "a", but we'd build in the *context* of "man" or "cat". There are 16,000 different combinations of "a", but the detailed modeling doesn't do. That's system design for language model training. Language models differ from language models in conversation. Whatever conversation. So you take models from one and models from another. Then you kind of interpolate them and mix them.

Basic decoding: lattice rescoring. Models can be transferred pretty easily. Between agency, it's much easier to share models due to restrictions, etc. For example if things are classified because it was derived from data. For these, we'd use.

And then, of course, DNN system building. This should give an exposure for all the underlying code. These are going beyond the basics. Very recently, called them chain models. 

## The Data from IARPA

International speech community organized a corpus free of copyright and restrictions, created a year ago towards a workshop on low-resource languages and free, located at the [OpenSLR website](http://www.openslr.org/24/). It's based on [Iban](https://en.wikipedia.org/wiki/Iban_language). Pronunciation is also available, i.e. phonemes, etc..



