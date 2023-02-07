# Ravenfield: Scavenger Add Ons
-----

Hello, if you're here then it means you're interested in making your own add-ons for the Scavenger mutator. Thankfully the process is quite simple. It does however require some scripting knowledege for what your drops will do. You're free to edit the existing code and prefabs from the sample provided. This tutorial also assumes you already know how to make mutators.

# Requirements
1. **Unity 2020.3.20f1**
2. The latest version of the RF2020 Toolspack, found on the official RF discord.

# Setting Up
Set up is simple as all this is just a simple mutator. One thing you'll need to note however is that wherever your ScriptedBehavior for the addon is, you'll need to add a DataContainer as well. Within that DataContainer you'll need to add your drop prefabs to the array of GameObjects. Ideally you'll want the ID to correspond whatever name your drop will have.

# The Script
The main thing you'll want to be looking at is the SampleAddOn.lua file. Inside you'll find simple code that injects a new item into Scavenger. Let's go through it to understand how it works.

###### Locating The Main Mutator
```
local scavengerObj = self.gameObject.Find("Scavenger")
if scavengerObj then
	self.Scavenger = scavengerObj.GetComponent(ScriptedBehaviour)
else
	print("No Scavenger detected!")
end
 ```
The code snippet above handles locating the main Scavenger mutator. If it isn't present self.Scavenger will have a **nil** value. It also throws a message to the console to make it clearer.

###### Getting the Data Container
```
self.dataContainer = self.gameObject.GetComponent(DataContainer)
```
This is just to get the DataContainer on your scripted behaviour. This is where your prefabs should be.
##### Inserting A Drop
```
local function sampleFunction()
	print("You picked up the sample object!")
end

if self.Scavenger then
	self.Scavenger.self:AddDrop("SampleDrop", self.dataContainer.GetGameObject("samplePrefab"), 0.5, sampleFunction,0, 1)
end
```
This is the "meat" of the script and where your scripting knowledge will be needed. For now, let's go over the AddDrop function first and ignore the sampleFunction.

AddDrop is the function you'll need to call to add a new item to Scavenger's drop table. It takes six parameters. Below you'll find a table describing each parameter in order.

AddDrop(dropType, prefab, dropChance, pickUpFunc, beamID, bonusMultiplier)

| Paremeter Name        | Type          | What is it?    |
| -------------         |:-------------:| -------------  |
| dropType              | string        |  
| prefab                | GameObject    |  
| dropChance            | float         |  
| pickUpFunc            | function      |
| beamID                | int           |
| bonusMultiplier       | float         |

