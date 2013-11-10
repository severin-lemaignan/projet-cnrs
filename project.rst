.. role:: cite

.. raw:: latex

   \providecommand*\DUrolecite[1]{\cite{#1}}

Project of Research Programme
=============================

From Artificial Intelligence to Cognition for Human-Robot Interaction
=====================================================================

As presented in the Report on Past Research Activities, my PhD has been focused
on defining what *knowledge* actually means in the context of service robotics.
This led me to propose a design and implementation of a robotic architecture
where symbolic knowledge is preeminent, and to start exploring the opportunities
that such a design opens for human-robot interaction, with contributions in the
fields of natural speech grounding, semantic situation assessment, *theory of
mind* for robots, or high-level semantic control of robots.

This project proposes to further build upon these results, from two converging
perspectives: from one side, accurately defining the *cognitive foundations*
pre-supposed by the next generation of companion robots, and from the other
side, exploring the *cognitive correlates of long-term interaction*.

The *cognitive foundations* are the basic cognitive base required to elaborate
upper-cognitive mechanisms. The nature and perimeter of these foundations is a
research question I would like to address. Two components seem however already
relevant and not yet satisfactorily addressed in the community: first, dynamic,
*amodal mental models* of the robot's broad environment, that interleave
temporal and semantic representations with geometric models. Such models should
endow the robot with a framework to seamlessly represent (uncertain) beliefs,
predict, recognize and remember situations, ground symbols into physical
entities.  Second, the ability to identify, select, alter mental *contexts*, be
they spatial, temporal, cultural, social. Current approaches for context
management do not correctly address the real complexity of this cognitive skill,
in particular because contexts are both *overlapping* and *multi-scale*
dimensions of our experience.

One the other hand, the *cognitive correlates of long-term interaction* question
the cognitive prerequisites for a robot that is set to autonomously interact
with humans for a long period of time (weeks). This perspective embraces
scientific challenges that are already actively researched (like multi-modal
communication with humans, joint task achievement or autonomous control over a
long period of time) and add new dimensions whose impacts on the robot's
cognition have not been studied: which cognitive skills may influence *long-term
acceptance* of the robot by humans, how to build *fine-grained mental models of
humans*, that take into account uncertainty, unconsistencies, evolution over
time, and how such models impact decision-making.

We postulate that an *holistic* approach of cognition for robots may lead.


Bootstrapping Robotic Cognition for Interaction
-----------------------------------------------

Human-robot interaction is a challenge for artificial intelligence. This field
indeed lays at the crossroad of several other domains of AI and requires to
tackle them in a holistic manner: Modeling humans and human cognition;
acquiring, representing, manipulating in a tractable way abstract knowledge;
reasoning on this knowledge to make decisions; and eventually instantiating
those decisions into physical actions in coordination with humans. Many AI
techniques are invited, from visual processing to symbolic reasoning, from task
planning to *theory of mind* building, from reactive control to action
recognition and learning.

Each of these questions have been and still are research fields of their own
right. What I suggest here is to look at the challenges that human-robot
interaction pose to artificial intelligence from a different perspective: a
shift in the development of robot from an *engineering perspective* where a set
of independent functions are integrated, to an *holistic cognitive perspective*
where the robot is considered as a whole, embodied agent.

To quote Langley :cite:`Langley2006`:

  The conventional wisdom of software engineering is that one should
  develop independent modules that have minimal interaction. In contrast, a
  cognitive architecture offers a *unified* theory of cognition with tightly
  interleaved modules that support synergistic effects.

The Cognitive Foundations
+++++++++++++++++++++++++

This cognitive take on robot design must be supported by adequate foundations.
My PhD thesis was focused on the practical meaning of the idea of "knowledge"
for robots. This was the required groundwork to further elaborate on the
cognitive skills of robots.

Besides the concept of knowledge, cognition for embodied agents like robots
implies three more facets: *embodied cognition*, or how to ground knowledge in
the physical world, *cognition for interaction*, or how to model the
interactors, and *agency*, or how knowledge supports decision-making.

I suggest that the cognitive foundations that are required to further advance
research on human-robot interaction must answer these questions:

1. how can I represent my environment and my beliefs in such a way that
   perception modalities as diverse as my own sensors, verbal descriptions of
   distant objects or events, or symbolic common-sense knowledge extracted from
   on-line bases could be mixed?

2. how do I identify the current situation which is a complex combination of
   diverse, changing circumstances. How do I project myself in other situations
   to predict, remember, explain, learn?

3. how do I access and represent mental models of the agents I interact with?

To design and implement on robots basic cognitive bricks to effectively support
these three questions would fulfil my definition of cognitive foundations for
autonomy and interaction.

These questions can be reformulated into explicit research questions:

1. real-time situation assessment that builds on semantic mapping and supports
   perspective-taking and affordances analysis, 

2. interleaved geometric, temporal and symbolic reasoning that supports
   identification of situations and actions, 

3. management and exploitation of independent, possibly contradictory, belief
   models for each agent the robot interacts with, 

4. identification and representation of overlapping and multi-scale interaction
   contexts: temporal, spatial, but also social and cultural,

5. natural multi-modal communication, also including *backchannel* communication
   like nodding and facial expressions

As complex as it may appear, I believe the global challenge formed by these
items to be actually tractable by adopting an innovative holistic approach to
design the cognitive architecture of the robots.

The first key idea is to research and develop a new *amodal representation* of
the environments that the robot inhabits. This novel representation aims at
merging perceptual and interaction modalities into hybrid models which
incorporate a time dimension and several semantic dimensions besides 3D
geometric models.

To take an example, we aim at being able to *represent an interpretation* of
such a sentence: "Be careful, a child is passing by behind you!". For the robot
to make sense of it, to access to the *qualia* of the sentence, the robot must
*imagine* an unknown child whose position must be estimated over time.
Representations such as we plan to research would allow to build an hybrid model
mixing (uncertain) geometric features with semantic annotations and timeline
supporting future and past extrapolation.

The second idea is to build a control model that relies on *hierarchical
overlapping contexts*.

From the foundations to long-term interaction
+++++++++++++++++++++++++++++++++++++++++++++



Research themes
---------------

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

Redefining interaction contexts for cognitive agents
++++++++++++++++++++++++++++++++++++++++++++++++++++

One of the directions that seems both critical and under-studied in our
community is what we can call *context management* in a broad sense.
Proper context management should allow the robot to mentally *move around
its own experiences* to place itself in the mental situation where the
interpretation of an event, an interaction or a situation makes sense.

Some projects model offer the possibility to jump in the past or to
switch to another agent's perspective, but in current approaches, selecting a
context always basically consists in retrieving a set of beliefs corresponding
to a situation, and temporarily replacing the current beliefs by those other
ones. This misses the fact that at a given moment, not one but many contexts
co-exist at different scales. We do not want to retrieve one monolithic set of
beliefs, but instead carefully craft a context from several *atomic*
contexts. Techniques for representation of overlapping pools of knowledge
largely remain to be developed, as well as efficient algorithms to retrieve (or
discard) such context-related pools of knowledge. This is a challenge not only
for robotics, but more generally for artificial intelligence.

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

Towards semantic control for extended autonomy
++++++++++++++++++++++++++++++++++++++++++++++


Until now, most control techniques for robots that rely on semantic tools have
focus on storing data and supporting simple grounding. Also: 

We split the interaction situations stemming from the situation assessment and
communication components in two categories: *desires* (performative act)
and *experiences* (assertive act).

*Desires* are typically human orders ("Give me that book"). The nature
of the desired action (to pick, give, look, bring, show...), along with the
action parametrization (what is acted on? who should perform the action? etc.)
are extracted from the knowledge base, and either passed to a task planner
(presented in the previous section) or executed if the procedure is directly
available.

*Experiences*, on the other hand, comprise of emotions, states and
questions (when asking a question, we consider the human to be in an
*interrogative state*). When the knowledge base states that an agent
*experiences* a particular emotion or state, the execution controller may
decide to handle it, typically by trying to answer the question or using the
emotional or physical state as a parameter for subsequent actions. As an
example, when the speaker says "I feel tired", we change the motion planner
parametrization to lower the effort the human needs to provide for the
following joint manipulation tasks. Note that this example has been implemented
as a proof-of-concept. A broader framework that would support action alteration
based on the user's experienced states is yet to be devised.



Interaction on the long term
++++++++++++++++++++++++++++

- managing long term (>week) autonomy
- managing long term cognition for interaction (building deep cognitive model of
  interactors)
- managing long term engagement (acceptance, interest)

Metrics for robotic cognition
+++++++++++++++++++++++++++++

Assessing the cognitive skills of robots is difficult because tools for
quatitative measurement of such skills are currently lacking.

The robotic community thus relies mostly on qualitative assessement that
Langley et al. :cite:`Langley2006` propose five such dimensions of evaluation:
the *generality* of the system (can it adapt easily to new tasks?), the
*rationality* or relevant of the inference/reasoning/decisions the system take,
the *reactivity* and *persistence* that evaluates if the behaviour of a
cognitive system is appropriate under unpredicted changes, the *improvability*
of the system as a function of the knowledge added to it, and finally, the
resulting *autonomy* of the system.

Cognitive performance can also be evaluated with the support of tools developed
in cognitive psychology. Several standard tests (like False-Belief experiments
:cite:`Leslie2000` or the Token test :cite:`DiSimoni1978`) have been used to
assess the cognitive abilities of robots :cite:`Mavridis2006, Breazeal2006`.


In :cite:`Lemaignan2013`, I have proposed to explore how the frequency of
interactions between the software modules of the robot and a central knowledge
base could be used as a metric for the *cognitive load* of the robot.

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
