---
title: "Interrogating tools"
layout: post
date: 2016-05-25
---

{% newthought 'The recent flurry of media concern' %} over the revelation that Facebook uses human curators to modify the output of their trending algorithm has raised some interesting questions for me about what people think it is that algorithms do, exactly.<!--more-->

Backstory: former Facebook employees allege that human curators of trends on the social media network regularly and intentionally surpress content from conservative media sources from surfacing in people's feeds.{% sidenote 'facebook-suppressed' 'Nunez, M. [Former Facebook Workers: We Routinely Suppressed Conservative News.](http://gizmodo.com/former-facebook-workers-we-routinely-suppressed-conser-1775461006) (2016). Gizmodo.com.' %}
This resulted in conservative politicians being upset and demanding that Facebook answer for the the alleged bias.{% sidenote 'facebook-hearing' 'Wong, J. (2016). [The politicians investigating Facebook’s bias are looking for the wrong kind of bias.](http://qz.com/684618/the-politicians-investigating-facebooks-bias-are-looking-for-the-wrong-kind-of-bias/) Quartz.' %}
These questions become even more puzzling when oriented around how worldviews are represented through algorithms. 

Conventional logic goes like this: algorithms can't be biased because they are just a bunch of math and math can't be biased. 
There are two major ways in which this is false. 
Bias can be (and unequivocally is) introduced into algorithms:

1. as a function of the way algorithms learn relevance through feedback; and
2. by the designers of the algorithm. 

## Choices

Algorithms are tools. 
They do all sorts of things for us now, but their basic set of tasks include: sorting, classifying, and retrieving information. 
They do this according to the ways in which they are designed and the ways in which we interact with them. 

> These are all human choices. Sometimes they’re made in the design of the algorithm, sometimes around it. The result we see, a changing list of topics, is not the output of “an algorithm” by itself, but rather of an effort that combined human activity and computational analysis, together, to produce it.{% sidenote 'algorithm-confusion' 'Gillespie, T. (2016). [Algorithms, clickworkers, and the befuddled fury around Facebook Trends.](http://culturedigitally.org/2016/05/facebook-trends/) Culture Digitally.' %}

We tend to think of bias in interactive information retrieval algorithms as attributable of the huge number people using a given search engine or information source. 
Algorithms that take input from users in the form of feedback (clicks, mostly) use this data to guess as to whether the links returned in a search engine results page (SERP) are relevant to a given user. 
This sort of automated analysis aggregates over time and the algorithm learns features that it associates with elements in queries. 
Therefore, if a whole bunch of racist people search and click on things that match their worldview, it is possible to coerce an automated system into becoming racist. 
Famously, this happened with Google Photos automatic identification features labeled two black people as gorillas.{% sidenote 'google-racism' 'Brogan, J. (2016). [Google Scrambles After Software IDs Photo of Two Black People as "Gorillas".](http://www.slate.com/blogs/future_tense/2015/06/30/google_s_image_recognition_software_returns_some_surprisingly_racist_results.html) Slate Magazine.' %}

This effect is not due to the impartial, mathematical construction of an algorithm responding to user input. 
There is nothing impartial about what Google's image identification algorithm returned for those people it misidentified in such an egregiously racist manner. 
Claims that algorithms can be impartial or neutral when they are designed by people operating in a culture with strong structural biases about race, gender, class, etc. cannot possibly hold. 

Harris, T. (2016). [How Technology Hijacks People’s Minds — from a Magician and Google’s Design Ethicist.](https://medium.com/@tristanharris/how-technology-hijacks-peoples-minds-from-a-magician-and-google-s-design-ethicist-56d62ef5edf3) Medium.



In my summer class,{% marginnote 'inls161-link' '*[Tools for Information Literacy](http://inls161.johndmart.in):* this course covers concepts of information literacy and tools for creating, formatting, manipulating, and disseminating information.' %} I aim to give students a platform through which they can develop high quality documentation &mdash; both on- and offline &mdash; and materials for presentation. 
The course also introduces students to some basic aspects of how computing and networking work, as well some basic aspects of handling data. 
It is an introductory course, and fulfills a technology requirement, but when I was given the assignment last year, I felt like it could be updated slightly to be a great deal more than it had been in the past.{% marginnote 'acknowledgements' 'I would like to point out here that my reaction to the design of the course as it stood when I inherited it is related to changes in technology over the last two decades. The course was originally taught by Barbara Wildemuth, who also taught it to SILS faculty in the early days of personal computing. Ron Bergquist, who taught the course for many years, believed as well that it was time for an update and supported my efforts heartily.' %}
Originally focusing mainly on using productivity suite tools to a high degree of skill, I saw the opportunity to connect the course to some other areas of computing that might serve fledgling information professionals interacting with technology as sometimes programmers, sometimes users. 

Instead of focusing on productivity tools, I made the decision to design the course thinking about workflow, rather than interface. 
Toolchains, or the specific series of programs and commands that would take a user from source to completion of a given task or series of tasks. 
I made a few choices about this aproach that reflect my own values related to the relative simplicity and complexity of interfaces. 
In my worldview, an interface should only be as complex as it needs to be, and no more. 
It should not obscure anything, either, meaning that I prefer interfaces that have a high degree of transparency with regard to what is going on underneath. 
I also prefer, with great zeal, to use open source software tools whenever possible. 

For this course, I decided that our workflow would stick to command-line interfaecs wherever possible and that we would begin with plaintext and work our way up to finished, formatted polished outputs that were nearly universally accessible. 
This also afforded me the opportunity to introduce version control as a part of the workflow, because plaintext can be easily tracked through tools like Git on platforms like GitHub. 

git@github.com:clayh53/tufte-jekyll.git

## Epistemology

http://culturedigitally.org/2016/05/facebook-trends/