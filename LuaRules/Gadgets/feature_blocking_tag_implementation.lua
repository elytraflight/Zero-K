----------------------------------------------------------------------------------------------------------------------------------------------------------------function gadget:GetInfo()   return {      name      = "Blocking Tag Implementation",      desc      = "Implements the blocking tag correctly.",      author    = "Google Frog",      date      = "3 Dec 2013",      license   = "GNU GPL, v2 or later",      layer     = 0,      enabled   = not (Game.version:find('91.0') and (Game.version:find('91.0.1') == nil))   }end-- http://springrts.com/mantis/view.php?id=4005-- http://springrts.com/mantis/view.php?id=4029----------------------------------------------------------------------------------------------------------------------------------------------------------------function gadget:FeatureCreated(featureID)	Spring.Echo("bla")endlocal block = falselocal collide = falsefunction gadget:GameFrame(f)		if f%300 == 0 then		block = not block	end	if f%300 == 150 then		collide = not collide	end	if f%150 == 0 then		local features = Spring.GetAllFeatures()		for i = 1, #features do			Spring.SetFeatureBlocking(features[i], block, collide)		end		Spring.Echo("block, collide")		Spring.Echo(block)		Spring.Echo(collide)	endend