-- Register the behaviour
behaviour("SampleAddOn")

function SampleAddOn:Start()
	local scavengerObj = self.gameObject.Find("Scavenger")
	if scavengerObj then
		self.Scavenger = scavengerObj.GetComponent(ScriptedBehaviour)
	else
		print("No Scavenger detected!")
	end

	self.dataContainer = self.gameObject.GetComponent(DataContainer)

	local function sampleFunction()
		print("You picked up the sample object!")
	end

	if self.Scavenger then
		self.Scavenger.self:AddDrop("SampleDrop", self.dataContainer.GetGameObject("samplePrefab"), 0.5, sampleFunction,0, 1)
	end
end
