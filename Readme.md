# LUA Scene to restart Fibaro HC3 or HC3L

1. Log in to your Fibaro HC3 controller's web interface.
2. Click on the "Settings" tab. 
3. Click on "Scene" and then "Add Scene"
4. Select Lua Scene
5. Change the date, time & interval. In the current example, it is scheduled for every 24 hours starting from 14:00 Hrs, 29/5/2023:
```
date = { "00", "14", "29", "5", "*", "2023" },
```
## Declarations
```
{
  conditions = { {
      isTrigger = true,
      operator = "matchInterval",
      property = "cron",
      type = "date",
      value = {
        date = { "00", "14", "29", "5", "*", "2023" },
        interval = 86400
      }
    } },
  operator = "all"
}
```

## Actions

````
fibaro.homeCenter.systemService.reboot()
````