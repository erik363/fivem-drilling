--[[
    Credit: @meta-hub -> meta_libs
    https://github.com/meta-hub/meta_libs/blob/master/meta_libs/client/classes/Scaleforms.lua
]]

function newScaleforms()
    local self = {}
  
    function self.UnloadMovie(scaleform)
      SetScaleformMovieAsNoLongerNeeded(scaleform)
    end
  
    function self.LoadMovie(name)
      local scaleform = RequestScaleformMovie(name)
      while not HasScaleformMovieLoaded(scaleform) do Wait(0); end
      return scaleform
    end
  
    function self.PopFloat(scaleform,method,val)
      PushScaleformMovieFunction(scaleform,method)
      PushScaleformMovieFunctionParameterFloat(val)
      PopScaleformMovieFunctionVoid()
    end
    return self
end