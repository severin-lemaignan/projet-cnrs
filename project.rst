.. role:: cite

.. raw:: latex

   \providecommand*\DUrolecite[1]{\cite{#1}}


.. Direction générale : "Du labo au monde réel, faire franchir à la HRI la
   porte de notre quotidien"

.. Les thèmes de recherche :
   - identification et interprétation des situations d'interaction en terme
   de superposition de contexte sociaux, spatiaux, temporels, culturels, etc.
   - facteurs psycho-sociaux d'acceptance d'un robot en environnement
   domestique, sur le long terme ( <- travail de mon post-doc actuel)
   - relation entre controle au niveau sémantique et autonomie longue durée
   - représentations amodales et raisonnement hybride sémantique et
   géométrique/temporel

.. Milestone "phare" :
   - la mise en place d'une expérience longue durée (> 1 mois) avec un
   robot type PR2 dans une famille

Research Statement: Human-Robot Interaction, From the Lab to our Doors
======================================================================

Amodal representation and reasoning
-----------------------------------
service robot , and even more Companions robot have to handle more perceptual modalities than many other families  of robots: beside proprioception and perception of their environment for navigation and manipulation, these robots need to model the humans. Not only the physical features (location, posture), but also mental features:  cognitive capabilities, believes, desires. These features are not directly observable and usually require inference based on others cueslike gestures or book channel communication (nodding for instance ) The correct interpretation of these cues requires to build new modality-independent representations that support three analysis perspectives:temporal, geometric and semantic. 

Long term acceptance of robots
------------------------------

Tata

On interaction contexts
-----------------------

One of the directions that seems both critical and under-studied in our
community is what we can call *context management* in a broad sense.
Proper context management should allow the robot to mentally *move around
its own experiences* to place itself in the mental situation where the
interpretation of an event, an interaction or a situation makes sense.
Cognitive functions like episodic memory, theory of mind, projection, diagnosis
and many other can be seen as special cases of a generic context management
capability.

Managing context means at least two things: recognising contexts and
representing contexts. Depending on what context we talk about, recognising
contexts can be relatively easy (who is talking to me? where am I?) to
difficult (what past experience does my interactor implicitly refers to?). One
of the main problem we see with context identification is that it is a
fundamentally *multi-scale* problem: at any moment, several temporal,
spatial, social, cultural context co-exist and overlap.

This lead to the second aspect, context representation. Contexts are currently
often limited to the current spatial and temporal situation. Some projects
model offer the possibility to jump in the past or to switch to another agent's
perspective, but in current approaches, selecting a context always basically
consists in retrieving a set of beliefs corresponding to a situation, and
temporarily replacing the current beliefs by those other ones. This misses the
fact that at a given moment, not one but many contexts co-exist at different
scales. We do not want to retrieve one monolithic set of beliefs, but instead
carefully craft a context from several *atomic* contexts. Techniques for
representation of overlapping pools of knowledge largely remain to be
developed, as well as efficient algorithms to retrieve (or discard) such
context-related pools of knowledge.

The ability to explicitly manage contexts and context switches would endow the
robot with a cognitive capability similar to what is known as
*context-dependent memory* in cognitive psychology. This is also related to
Tulving's *autonoetic consciousness* :cite:`Tulving1985a`: the ability to
reflect upon its own past or future experiences.

From a technical standpoint, proper context management would mean a transition
from a monolithic knowledge base to an more modular architecture, with either
multiple (overlapping) models or *facets* (one per agent, one per place,
one per period of time, etc.), or maybe a systematic use of reification to
attach to each *atom* of knowledge (the atom is usually the statement. It
could maybe be extended to a small set of cohesive statements) one or several
contexts. The development of modal logic in practical applications is also an
important direction to examine.

Much remain to be done to this regard, starting with a formal analysis of what
are the relevant contexts for our robots.


.. raw:: latex

   \bibliographystyle{plain}
   \bibliography{biblio}
