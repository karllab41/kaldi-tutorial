# Kaldi Tutorial
Building Speech Recognition Systems with the Kaldi Toolkit  
February 15, 2017  

[Website for the Materials](http://kaldi-asr.org/ibt.html)

## The History of Kaldi

International speech community organized a corpus free of copyright and restrictions, created a year ago towards a workshop on low-resource languages and free. It's based on [Iban](https://en.wikipedia.org/wiki/Iban_language). Pronunciation is also available, i.e. phonemes, etc..

Not having enough transcribed speech. The ARPA(s), NSF, Facebook, and Google helped fund a workshop in 2010, together with Dan Povey, Lukas Burget, and many others. After the workshop, Kaldi grew, and the number of users of have grown.


NIST TREC SDR. Meanwhile, in 1998 broadcast news had transcription. If you searched for it. But, in the IC, NIST STD Pilot (2006). Anchors are seasoned speakers and pronounced. But what about telephone conversations were very difficult. The second issue was that there was limited languages. Thus, 2012 IARPA launched Babel a month after Dan Povey returned to Kaldi's birthplace. The focus: transcribe conversational telphone speech but with a few subtle changes. Focus on low-resource conditions. Concurrent progress in multiple languages, with keyword search as a metric and task. That's where Kaldi got a big boost.

And unofficially, ten teams did well, and everyone use it. And IBM didn't use Kaldi. In Singapore, they pretty much used Kaldi's recipes and beat.


## Kaldi Today

Right now, it's a C++ library with "recipes". Recipes are sets of shell scripts that are sequences and steps. How you build your system, depends on recipe, you may want to use tools in a different ways based on whether or not there are tones or clicks. Even if you were an expert, you'd have a difficult time. So what you would do, you'd use different recipes focused on different things.

For example, when Kaldi was created, far-field wasn't created. The code-base called AMI, the standard recipe didn't do well. There's a switchboard recipe that works for AMI. There is a Babel recipe that works. They're all in the Github link. That's what Kaldi. There are a bunch of libraries, and then there are recipes. It's like legos. You can build things on your own, or you can build it according to recipes.

Top STT performance in open benchmark tests.

It's widely adopted in academia and industry, and unofficially. The Amazon Echo is built entirely from this. Siri, the new one, is going to use Kaldi. Call centers are converting to Kaldi, originating monitoring emerging problems with products. 3-4 engineers were able to do it in a few months based on Amazon cloud. On the order 100k calls per day. Small groups can build commercially viable systems.

There's a main "trunk" maintained by JHU, owned by Dan Povey. And several forks offed, where people had several ideas. The lore is that Microsoft didn't want him to do open source, so he left. When he tried to make big changes. When he updated, it started getting bureacratically difficult, and so he just left.


