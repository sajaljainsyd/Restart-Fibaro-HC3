To use this script, follow these steps:

1. Log in to your Fibaro HC3 controller's web interface.
2. Go to the Virtual Devices section and create a new virtual device.
3. Assign the script to the new virtual device.
4. Update the RESTART_TIME variable with the desired restart time in the format "HH:MM" (24-hour format).
5. Save the script and close the editor.
6. Go to the Scenes section and create a new scene.
7. In the scene's configuration, add a trigger that schedules the scene to run every night at a specific time.
8. Add an action to the scene and select the virtual device you created earlier.
9. Save the scene and enable it.

Now, the Fibaro HC3 controller will be automatically restarted at the specified time every night. Make sure to replace 'YOUR_HC3_IP' with the actual IP address of your Fibaro HC3 controller, and if applicable, update the 'Bearer fibaro-api-token' with the appropriate API token for authentication.


To obtain a Bearer API token for your Fibaro HC3 controller, you can follow these steps:

1. Log in to your Fibaro HC3 controller's web interface.
2. Click on the "Configuration" tab.
3. Select "API" from the left-hand menu.
4. Enable the API access by toggling the "Allow to access API" switch.
5. In the "API Token" section, click on the "Generate Token" button.
6. A dialog box will appear with the generated API token. Copy the token to your clipboard.

Please note that generating an API token provides access to your Fibaro HC3 controller's API and should be treated with caution. Keep the token secure and avoid sharing it with unauthorized individuals.