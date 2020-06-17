Go to search, search for task scheduler. In the actions menu on the right, click on create task.
Enter Name, go to triggers tab. Create a new trigger, with a begin task as you login, set delay to 10s.
Go to the actions and add path to powershell.exe with args `-ExecutionPolicy Bypass *path-to-script*`
