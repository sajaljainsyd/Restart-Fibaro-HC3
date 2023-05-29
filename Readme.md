
# Declarations
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

# Actions

````
fibaro.homeCenter.systemService.reboot()
````