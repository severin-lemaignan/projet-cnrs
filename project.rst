.. role:: cite

.. raw:: latex

   \providecommand*\DUrolecite[1]{\cite{#1}}

Research Statement: From Artificial Intelligence to Cognition for Human-Robot Interaction
=========================================================================================


Overview
--------

Human-Robot interaction is an area filled with challenges for artificial
intelligence: dynamic, partially unknown environments that are not originally
designed for autonomous machines; a large variety of situations and objects to
deal with, with possibly complex semantics; physical interactions with objects
and humans that requires dexterity, accurate monitoring, fine, low-latency
control; good communication skills...the list goes on.

For a robot to further share space and tasks with a human, key cognitive issues
are to be addressed:

1. real-time situation assessment that builds on semantic mapping and supports
   perspective-taking and affordances analysis, 

2. interleaved geometric, temporal and symbolic reasoning that supports
   identification of situations and actions, 

3. management and exploitation of independent, possibly contradictory, belief
   models for each agent the robot interacts with, 

4. identification and representation of overlapping and multi-scale interaction
   contexts: temporal, spatial, but also social and cultural,

5. natural multi-modal communication, also including *backchannel* communication
   like nodding and facial expressions, 

6. human-aware task planning and execution, that produces and control realistic
   behaviours for joint goal achievement.


Each of these questions have been independently researched in the scientific
community, as we may summarize in the next sections. However, these issues,
taken as a whole, lead to new fundamental scientific challenge: how to shift the
development of robot from an *engineering perspective* where a set of
pre-existing algorithms are integrated, to a *cognitive perspective* where the
robot is considered as a complex, embodied agent.

As complex as it may appear, I believe the global challenge formed by these
items to be actually tractable by adopting an innovative holistic approach to
design the cognitive architecture of the robots.

The first key idea is to research and develop new *amodal representations* of the
environments that the robot inhabits. These novel representations aim at merging
perceptual and interaction modalities into hybrid models which incorporate a
time dimension and several semantic dimensions, besides 3D geometric models. A
typical example would be the representation of the meaning of such a sentence:
"Be careful, a child is passing by behind you!". To make sense of such a
sentence, *i.e.* for the robot to acquire its *qualia*, the robot must imagine a
possible human-like object whose position must be estimated and change over
time.

The second

.. note::
  Also mention long-term interaction


Research themes
---------------

Towards semantic control for extended autonomy
++++++++++++++++++++++++++++++++++++++++++++++


Until now, most control techniques for robots that rely on semantic tools have
focus on storing data and supporting simple grounding. Also: 



Amodal representation and hybrid reasoning
++++++++++++++++++++++++++++++++++++++++++


In the stack of software components required for an autonomous robot, the
layer that provide an uniform representation of the robot's environment not
only suitable, but even convenient for decision making, is crucial.

Service robots, and even more companions robot, have to handle more perceptual
modalities than many other families of robots: beside proprioception and
perception of their environment for navigation and manipulation, these robots
need to account for the humans. Not only their (dynamic) physical features
(location, posture, gestures...), but also mental features:  cognitive
capabilities, believes, desires. These features are not directly observable and
usually require inference based on others cues like gestures or backchannel
communication (nodding for instance).

The correct interpretation of these cues requires to build new
modality-independent (thus, amodal) representations that support three parallel
and interleaved analysis perspectives: temporal, geometric and semantic.

Amongst the research challenges that such an amodal representation would
support, we can mention:

- ensuring physically realistic model of the world (also known as the
  "flying video tapes" issue)
- managing several level of refinement of object's model (from partial
  point clouds to accurate CAD models)
- managing plausible states for unseen/not visible/occluded objects
  (probabilistic modeling, physics reasoning)
- managing world discontinuities (e.g., one single blob turns out to be
  two different objects, next to each other)
- representing suppositions (e.g. a human tells the robot that a box is behind him)
- representing fields (e.g. the field of reachability of an object for
  an agent, a traversability map, etc.)


Principled hybrid temporal/geometric/semantic reasoning is the natural follow-up
of the design and implementation of a versatile amodal representation scheme.

Long term acceptance of robots
++++++++++++++++++++++++++++++


Tata

On interaction contexts
+++++++++++++++++++++++

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

Research roadmap: aiming at ambitious field experiment
------------------------------------------------------

This section aims at sketching a research roadmap to bootstrap this research
project.

I propose to materialize the scientific themes I have introduced in the
previous sections around an ambitious experimental challenge: bringing a
state-of-the-art mobile manipulator (like the Willow Garage's PR2) to a
non-expert household for a long duration (at least a month).

Relevance
+++++++++

Robots in domestic environments are not new. The `robotcup@home` challenge,
for instance, gathers since 2006 robots from many part of the world, tasking
them with various missions. These include following a person in a robust way,
navigating in a domestic environment to find and recognize persons, delivering
objects to specific recipients, complex pick and place tasks in non-controlled
environments, fetching groceries in a real supermarket, initially unknown.

Online semantic mapping, speech recognition, event-based control, object
recognition and manipulation are a few of the technical capabilities required by
these tests. These are all active research topics of their own, that are also
fields researched at LAAS-CNRS.

Such technical skills make most of the challenges offered by projects like
`robotcup@home`. As hard and important as they are, they leave out a large set
of difficult issues that arise when facing long term autonomy and interaction: 
what does it really takes to have a robot in a real household for a full month?




Faisability
+++++++++++



.. note::
    Mention Horizon2020


.. raw:: latex

   \bibliographystyle{plain}
   \bibliography{biblio}
