# MATLAB -- A Multi-Agent Framework

## Multi-Agent Systems
An agent is defined as an entity (e.g. a computer system) that *acts* *autonomously* in the pursuit of *its own goals*. That is, an agent is capable of setting its own goals and *plan* accordingly, rather than having to be told what to do and how at a given time [1].

A multi-agent system, is one in which various agents *interact* with one another. In turn, a successful interaction will require the ability for them to  *cooperate*, *coordinate*, and *negotiate* with each other [1].

From an implementation point of view, any given multi-agent system can be seen as the interaction between 3 fundamental objects: the environment, the time module and the agent(s), as shown in figure 1.

![MAScheme](MAScheme.png)

*Figure 1 --- Fundamental objects of a multi-agent system and its interaction.*

The time module plays a pivotal role on these systems, since it is responsible for the *scheduling* and *activation* of agents. That is, to set the order by which agents are called upon to act. In short, this module glues together the environment and the agent objects.

## Modules
Each object, or module, has a set of *properties* and *methods*.

Properties are intrinsic information set by the user (e.g. the number of agents that make the system, the unique ID of each agent, and so on) and which can later be used and/or changed by methods. 

Methods are module-specific functions that enable each module to set, transform or share information with one-another.

Time in most agent-based models moves in *steps*, or *ticks*.  All modules, regardless of type have a main method `step()`which is responsible for defining how that module should behave.

### Environment /Model
The environment (model) module represents the environment and encapsulates both the agent and the time modules.

This module must contain all the rules necessary to accurately represent the environment in which agents will exist and interact with and upon.

Moreover, the model shall also call each agent upon to act through the schedule module, as seen in figure 1.

### Time/Schedule
The time, or schedule, module in turn, is responsible for the scheduling and activation of agents. At any given step, the schedule module must sort and activate each agent.

There are two main scheduling patterns:
* **Sorted activation**, where agents are called upon to act in an orderly fashion, either in ascending or descending order, according to each agent's `unique_ID`

* **Random activation**, where agents are called upon to act in an random fashion.

### Agent
The agent module determines the agents' behaviour. And at any given step, an agent is expected to (1) *sense* its environment, (2) *set* a goal, (3) *plan* its actions accordingly and finally (4) *act* upon the environment.

## The Project
The present project was based on the Mesa Python Project: https://mesa.readthedocs.io/en/latest/index.html

It is composed of three main modules: model, agent and time module.

### Example
The example herein used is the Random Wealth Game (https://github.com/eduardogfma/RandomWealthGame): a game where each agent starts with a coin and in each step it has to randomly choose and give away a coin.

## References
[1] Wooldridge, M. (2009). _An introduction to multiagent systems_. John Wiley & Sons.