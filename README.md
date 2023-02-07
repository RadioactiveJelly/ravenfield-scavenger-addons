# Ravenfield: Scavenger Add Ons
-----

Hello, if you're here then it means you're interested in making your own add-ons for the Scavenger mutator. Thankfully the process is quite simple. It does however require some scripting knowledege for what your drops will do. You're free to edit the existing code and prefabs from the sample provided.

# Requirements
1. **Unity 2020.3.20f1**
2. The latest version of the RF2020 Toolspack, found on the official RF discord.

# Setting Up
First thing you'll want to do is set up your mutator. If you already know how, you can skip to the next section. If you don't here's a quick run down of how to set one up. You'll first want to create an empty game object and add a ScriptedBehaviour component. Next create another empty game object and add the MutatorContentMod component. In the MutatorContentMod component add your ScriptedBehaviour prefab.

# How To
The main thing you'll want to be looking at is the SampleAddOn.lua file. Inside you'll find simple code that injects a new item into Scavenger. Let's go through it one by one.
