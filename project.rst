.. role:: cite

.. raw:: latex

   \providecommand*\DUrolecite[1]{\cite{#1}}

Project of Research Program
===========================

From Artificial Intelligence to Cognition for Human-Robot Interaction
=====================================================================

As presented in the Report on Past Research Activities, my PhD has been focused
on defining what *knowledge* actually means in the context of service robotics.
This led me to propose a design and implementation of a robotic architecture
where symbolic knowledge is preeminent, and to amorce the investigation of the
opportunities that such a design opens for human-robot interaction, with
effective contributions in the fields of natural speech grounding, semantic
situation assessment, *theory of mind* for robots, or high-level semantic
control of robots.

This project proposes to build upon these results, from two converging
perspectives: on one side, by accurately defining the *cognitive foundations*
pre-supposed by the next generation of companion robots, and on the other side,
by exploring the *cognitive correlates of long-term interaction*.

The *cognitive foundations* are the cognitive base required to develop
upper-cognitive functions and processing. The nature and perimeter of these
foundations is a research question I would like to address. Two components seem
already of particular importance and not yet satisfactorily addressed in the
community: first, dynamic, *amodal mental models* of the robot's environment,
that interleave geometric 3D models with temporal and semantic representations.
Such models should endow the robot with a mental framework to seamlessly represent
(uncertain) beliefs, predict, recognize and remember situations, ground symbols
into physical entities. Second, the ability to identify, appropriately select
and alter mental *contexts*, be they spatial, temporal, cultural, social.
Current approaches for context management do not correctly address the real
complexity of this cognitive skill, in particular the fact that these dimensions
of our experience are *overlapping* and *multi-scale*.

One the other hand, the *cognitive correlates of long-term interaction* question
the cognitive prerequisites for a robot that is set to autonomously interact
with humans for a long period of time (weeks). This perspective embraces
scientific challenges that are already actively researched (like multi-modal
communication with humans, joint task achievement or autonomous control over a
long period of time) and add new dimensions whose impacts on the robot's
cognition have been less studied: which cognitive skills may influence
*long-term acceptance* of the robot by humans? How to build at runtime
*fine-grained mental models of humans*, that take into account uncertainty,
inconsistencies, evolution over time? How such models impact decision-making?

The broader hypothesis I aim to test with these two perspectives can be
rephrased: is an *holistic approach of cognition for robots* (i.e. neither
bottom-up nor top-down) a key to overcome the obstacles we currently face in the
field of human-robot interaction?

To effectively answer this question, I propose to support this research program
with a set of ambitious experimental targets, including long-duration (over a
month) experiments with autonomous human-robot interaction in ecologically valid
environments (typically, real households).

At ISIR, both robotic cognition at the neuro-level and human-robot interaction are
strong research themes. The laboratory would be well suited to support both
basic research on robotic cognition and complex field experiments, and I am glad
that they accepted to support my application.

Research Frame: The Missing Pieces of Robotic Cognition for Interaction
-----------------------------------------------------------------------

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
of independent functions are integrated, to an holistic *cognitive perspective*
where the robot is considered as a whole, embodied agent.

To quote Langley :cite:`Langley2006`:

  The conventional wisdom of software engineering is that one should
  develop independent modules that have minimal interaction. In contrast, a
  cognitive architecture offers a *unified* theory of cognition with tightly
  interleaved modules that support synergistic effects.

Robotics is indeed traditionally regarded as the prototypical instance of
*embodied* artificial intelligence, and this dimension is especially prevalent
in human-robot interaction, where agents have to share a joint physical
environment.

It results in a tight coupling between the symbolic and the geometric realms:
while AI at its origins was mostly a matter of symbolic models, it has been
since recognised that not only the mind is not a purely abstract system,
disconnected from the physical world, but even more, cognition fundamentally
relies on its relation to the physical world (so-called *embodied
cognition*). Varela :cite:`Varela1992` is one of the main discoverer of these
mechanisms, and coined the concept of *enactivism* as the theoretical
framework that study the links between cognition, embodiment and actions.

The *symbol grounding* challenge is emblematic of the embodied nature of robotic
cognition. *Symbol grounding* is the task of identifying or creating, and then,
maintaining of a link between the symbol (the syntactic form of knowledge the
computer will manipulate) and its semantics, i.e. its meaning, anchored in the
world (the relations between the symbol, the referent of the symbol, and
mediating minds is classically referred as the *semantic triangle*, and has been
extensively studied in linguistics). The issue of grounding is well known in
cognitive science and is summarised by Harnard :cite:`Harnad1990` by this
question: "how the semantic interpretation of a formal symbol system can be made
intrinsic to the system?". This issue has a major practical importance in
robotic: for a robot to be both endowed with a symbolic representational and
reasoning system, and able to *act* in the physical world, it must ground its
knowledge.

.. note::
  Coradeshi and co :cite:`Coradeschi2003` :cite:`Loutfi2008`


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

These questions can be reformulated into explicit research objects:

1. real-time situation assessment that builds on semantic mapping and supports
   perspective-taking and affordances analysis, 

2. interleaved geometric, temporal and symbolic reasoning that supports in
   particular identification of situations and actions, 

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



Research Themes
---------------

Amodal representation and hybrid reasoning
++++++++++++++++++++++++++++++++++++++++++


In the stack of software components required for an autonomous robot, the
layer that provide an uniform representation of the robot's environment not
only suitable, but even convenient for decision making, is crucial.

As expected, a large body of literature discusses approaches and techniques to
build such representations, collectively designated as *situation assessment*
techniques.

I briefly present four approaches that take very different
perspectives on this question, and articulate afterwards a novel direction that
would support a new level of human-robot interaction.

The four approaches of situation assessement I propose to examinate are amodal
*proxies* :cite:`Jacobsson2008`, grounded amodal representations
:cite:`Mavridis2006`, semantic maps :cite:`Nuechter2008, Galindo2008,
Blodow2011` and affordance-based planning and object classification
:cite:`Lorken2008, Varadarajan2011`.

.. note::
  Situation assessment for HRI, someone?

.. note::
  mention DyKNOW approach as well?

.. note::
  TODO :-)

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

- ensuring physically realistic model of the world (colloquially known as the
  "flying books" issue: perception inaccuracies lead to physically impossible
  environments),

- managing plausible states for unseen/not visible/occluded objects
  (probabilistic modeling, physics reasoning),

- managing non-monotonic models (e.g., upon closer inspection, one single
  perceived blob turns out to be two different objects, next to each other. The
  initial blob is removed, and replaced by two new objects),

- representing suppositions (e.g. a human tells the robot that a box lays behind
  it. Even if the robot can not see it, it represents a likely shape and
  location for the object.)

- representing fields (e.g. the field of reachability of an object for an agent,
  a traversability map, etc.)

- managing several level of refinement of object's model (from partial point
  clouds to accurate CAD models)


Principled hybrid temporal/geometric/semantic reasoning is the natural follow-up
of the design and implementation of a versatile amodal representation scheme.

Redefining interaction contexts for cognitive agents
++++++++++++++++++++++++++++++++++++++++++++++++++++

One of the directions that seems both critical and under-studied in our
community is what we can call *context management* in a broad sense.
Proper context management should allow the robot to mentally *move around
its own experiences* to place itself in the mental situation where the
interpretation of an event, an interaction or a situation makes sense.

The role and importance of context identification for correct interpretation of
a situation is well understood in cognitive science. A classical example, cited
by Zimbardo et Gerrig in :cite:`zimbardo2002foundations` considers two series of
words:

  FOX; OWL; SNAKE; TURKEY; SWAN; D?CK

  BOB; RAY; DAVE; BILL; HENRY; D?CK

If you read through these lines, you are likely to have guessed the last words of
each row, *DUCK* and *DICK*, only from the context induced by the others words.

Applied to service robotics in households, an example of context-dependent
interpretation of two similir situation could be:

  *A cat walks in the living room*

  *A baby crawls towards a power socket*

The example involves perception issues (distinguishing between a cat and a
baby), but even if we consider that the scene is perceptually recognised, its
interpretation relies on selecting relevant contexts (for instance, the
*caregiver* context: what is the role of the robot in presence of a cat/baby?
the *baby* context: knowledge about the baby capabilities, predictions of baby
intentions, salient features of the room for a baby, the *cat* context, etc.)

As far as I know, no epistemologic study of contexts in robotics has been conducted. 
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

Cognitive control architectures for robotics is a research field in its own right.
Our originality of our contribution relates to the interleaving of a
semantic-aware architecture designed for autonomy with human-aware decisional
components. To our knowledge, no other robotic architecture covers in depth
those two perspectives.

The Ke Jia project :cite:`Chen2010` is maybe one of the closest approach. It
integrates on a mobile platform a knowledge representation language with
natural language processing, task planning and motion planning. Default and
non-monotonic reasoning has been especially researched within the Ke Jia
project for symbolic task planing :cite:`Ji2011` and underspecified natural
language processing.

The Ke Jia robot has been demonstrated in several tasks involving human-robot
interaction with natural language. These tasks include a task with multiple
*pick \& carry* that are globally optimised, naive physics reasoning via
taught rules or more complex scenarios with the robot delivering drinks, taking
into account changing and mutually exclusive preferences of users.

Also notable, Beetz et al. :cite:`Beetz2010` proposes a cognitive architecture
called ``CRAM`` (Cognitive Robot Abstract Machine) that integrates
\textsc{KnowRob} :cite:`Tenorth2009a`, a knowledge processing framework based on
Prolog. Its underlying storage is based on an OWL ontology, derived from
``OpenCyc``. ``CRAM`` and ``KnowRob`` have been demonstrated on
several real-world scenarios, where natural language recipes extracted from the
Internet had to be translated into plans and executed in a kitchen environment,
perceived and rebuilt on-line by the robots. This architecture has however not
been deployed in scenarios involving human-robot interactions.


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
quantitative measurement of such skills remain mostly to be devised.

The robotic community thus relies mostly on qualitative assessement.
Langley et al. :cite:`Langley2006` propose five such dimensions of evaluation:
the *generality* of the system (can it adapt easily to new tasks?), the
*rationality* or relevant of the inference/reasoning/decisions the system take,
the *reactivity* and *persistence* that evaluates if the behaviour of a
cognitive system is appropriate under unpredicted changes, the *improvability*
of the system as a function of the knowledge added to it, and finally, the
resulting *autonomy* of the system.

Recent work from Zhang et al. :cite:`zhang2013evaluation` survey frameworks and
metrics for performance evaluation of cognitive robots, but they underline that
most of these benchmarks are focused on physical capabilities that do not
necessarly require advanced knowledge representation and manipulation. They
hence introduce their own metrics based on a (partially automatic) measurement
of *Fitness to Ideal Model* (FIM) of a behaviour, correlated to the *Description
Length* (DLen) of the command that triggered the behaviour. Their hypothesis is
that the better the cognitive skills, the shorter the DLen for a constant FIM
level: instead of "go to the counter, take the green glass, pour a beer into it,
and bring it back to me", we could say "bring me a drink". This approach,
combined with a rating of task difficulty, is interesting.  It possibly allows
for reasonable quantification of the capabilities of a robot to deal with
underspecified tasks, which are notorious for requiring good cognitive
capabilities to "fill the gaps". It however needs to be refined to take into
account other aspects of cognition that are important for human-robot
interaction.

Here, assessement of cognitive performances can benefit from the support of
tools developed in cognitive psychology. Several classical tests, like the
False-Belief experiment :cite:`Leslie2000`, related to the Theory of Mind, or
the Token test :cite:`DiSimoni1978`, have been used to assess the cognitive
abilities of robots :cite:`Mavridis2006, Breazeal2006`. Much remains to be done,
however, to draw a complete picture of the know-how in cognitive psychology when
projected onto robots: what are the existing metrics, and how suitable and
applicable to embodied artifical agents they are.

My hope is to research and build a solid, operational framework for the
assessment of cognitive skills of robots, that would address both individual
facets of cognition (performance for dealing with underspecified tasks, theory
of mind, language tests, etc.) and *global measurements of the cognitive
activity*. In :cite:`lemaignan2013explicit`, I propose a first idea to explore
this last point. By plotting the frequency of interactions between the software
modules of the robot and a central knowledge base during an hour-long
experiment, I have build a diagram that could be interpreted as a metric for the
*cognitive load* of the robot.

Research roadmap: aiming at ambitious field experiments
-------------------------------------------------------

This section aims at sketching a research roadmap to bootstrap this research
project.

I propose to materialize the scientific themes I have introduced in the previous
sections around five experimental challenges, that range from the design of an
experimental methodology to assess the cognitive capabilities of robots, to
bringing a state-of-the-art mobile manipulator (like the Willow Garage's PR2) to
a non-expert household for a long duration (a month).

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


.. note::
    Mention Horizon2020

Five Major Experiments
++++++++++++++++++++++

Conducting experiments in human-robot interaction is notoriously difficult, both
from technical (bringing a robot in a natural human environment is technically
demanding) and methodological (roboticists often lack the required
background to conduct sound ethnographic studies) standpoints.

I propose to organise the first years of my research around five 


3-years Tentative Agenda
++++++++++++++++++++++++

- *+8 months*: survey of pyscho-cognitive benchmarks for robotics.

- *+12 months*: design of a methodologically-sound experimental
  platform for reproductible pyscho-cognitive benchmarks. *Experiment A*.

- *+12 months*: middleware for geometric, temporal, semantic hybrid assessment
  and reasoning released.

- *+18 months*: lab experiments that explore the opportunities of hybrid
  assessment and resoning. *Experiment B*.

- *+18 months*:

- *+24 months*: preparation for the long-term experiment: design of the
  experiment, definition of metrics, selection process for host families.

- *+26 months*: one-week in-situ deployment in three selected families.
  *Experiment D*.

- *+30 months*: one-month long field experiment in one family. *Experiment E*.



.. raw:: latex

   \bibliographystyle{plain}
   \bibliography{biblio}
