--[[
    Credit: @meta-hub -> meta_libs
    https://github.com/meta-hub/meta_libs/blob/master/meta_libs/client/classes/Scaleforms.lua
]]

local newScaleforms = function()
    local self = {}
  
    self.UnloadMovie = function(scaleform)
      SetScaleformMovieAsNoLongerNeeded(scaleform)
    end
  
    self.LoadMovie = function(name)
      local scaleform = RequestScaleformMovie(name)
      while not HasScaleformMovieLoaded(scaleform) do Wait(0); end
      return scaleform
    end
  
    self.PopFloat = function(scaleform,method,val)
      PushScaleformMovieFunction(scaleform,method)
      PushScaleformMovieFunctionParameterFloat(val)
      PopScaleformMovieFunctionVoid()
    end
    return self
end