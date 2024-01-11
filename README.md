# Installation
- Extract the `fivem-drilling` folder into your `resources` directory.
- Add `start fivem-drilling` to your `server.cfg` file.
- Trigger the drilling event from your script, or test it with the example below.

# Example
```lua
RegisterCommand('sf_drilling', function(...)
  TriggerEvent("Drilling:Start",function(result)
    if (result == "success") then
      print("Drilling complete.")
    elseif (result == "failed")
      print("Drilling failed.")
    elseif (result == "cancel")
      print("Drilling canceled.")
    end
  end)
end)
```

# Preview Image
- Note: Image from GTAV.
![Image of Drilling](https://www.gadgetreview.com/wp-content/uploads/2016/07/the_fleeca_job_3.jpg)
