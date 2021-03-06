-- This file is for use with Corona(R) SDK
--
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = (require "shapedefs").physicsData(scaleFactor)
--			local shape = display.newImage("objectname.png")
--			physics.addBody( shape, physicsData:get("objectname") )
--

-- copy needed functions to local scope
local unpack = unpack
local pairs = pairs
local ipairs = ipairs

module(...)

function physicsData(scale)
	local physics = { data =
	{ 
		
		["object"] = {
			
				{
					density = 10, friction = 20, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -4.69323444366455, 12.0148284435272  ,  -6.08341026306152, 8.02965688705444  ,  -6.91751575469971, -13.7126960754395  ,  2.25764656066895, 8.49304914474487  ,  2.72103881835938, 14.8878591060638  }
				}  ,
				{
					density = 10, friction = 20, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   9.5792407989502, 8.21501398086548  ,  14.3985176086426, 13.4050047397614  ,  11.710844039917, 13.5903613567352  }
				}  ,
				{
					density = 10, friction = 20, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -13.9610750675201, 13.7757182121277  ,  -6.91751575469971, -13.7126960754395  ,  -10.2539386749268, 7.93697834014893  ,  -11.1807227134705, 12.2928638458252  }
				}  ,
				{
					density = 10, friction = 20, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   14.3985176086426, 13.4050047397614  ,  9.5792407989502, 8.21501398086548  ,  -6.91751575469971, -13.7126960754395  ,  4.90824890136719, -14.6394805908203  }
				}  ,
				{
					density = 10, friction = 20, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -6.91751575469971, -13.7126960754395  ,  -6.08341026306152, 8.02965688705444  ,  -10.2539386749268, 7.93697834014893  }
				}  ,
				{
					density = 10, friction = 20, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -6.91751575469971, -13.7126960754395  ,  9.5792407989502, 8.21501398086548  ,  2.25764656066895, 8.49304914474487  }
				}  
		}
		
	} }

	-- apply scale factor
	local s = scale or 1.0
	for bi,body in pairs(physics.data) do
		for fi,fixture in ipairs(body) do
			for ci,coordinate in ipairs(fixture.shape) do
				fixture.shape[ci] = s * coordinate
			end
		end
	end
	
	function physics:get(name)
		return unpack(self.data[name])
	end
	
	return physics;
end


