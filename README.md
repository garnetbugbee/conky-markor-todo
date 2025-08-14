# conky-markor-todo
Instruction and files for setting up conky, markor, syncthing, and macrodroid to make a comprehensive todo ecosystem.
The main Conky todo_sys.conf is adapted from the MX linux conky todo.
The programs you will need:
  #Conky (https://github.com/brndnmtthws/conky)
  #Conky manager 2 (https://github.com/zcot/conky-manager2)
  #Markor on android 
    github (https://github.com/gsantner/markor)
    fdroid (https://f-droid.org/packages/net.gsantner.markor/)
  #Macrodroid (https://play.google.com/store/apps/details?id=com.arlosoft.macrodroid&hl=en-US)
  #Syncthing
    Desktop (https://syncthing.net) though there are many ways to download/install syncthing depending on what distro you are running
    Android syncthing fork (https://f-droid.org/packages/com.github.catfriend1.syncthingandroid/) 

#Conky   
Once you have these installed, download the zip of this repository(extract the files) and add the extracted files to a folder in
the .conky folder in your home directory. The .conky file may be hidden from view, so you will have to check show hidden files in the menu.
Run the Conky manager2 and find the todo.conf and select it. You should have the conky show up on your desktop.

#Syncthing
Now setup the syncthing on your desktop adding the folder that contains the todo.txt and todo month txt file.
Install and run the syncthing fork from fdroid, linking it to you computer and sharing the file. 
There are many tutorials on setting up syncthing.

#Markor
Install markor and change the file for the dodo list to the todo.txt shared by syncthing from your computer.
Add the widget for the todo to your phone.

#Macrodroid
Add the todo.macro from here to macrodroid. Once activated anytime someone texts you with 
the 💪 anything after that will be added to the todo.txt on you phone.
 (txt example: will you pick up 💪 tomatoes, potatoes, and gold bulion at the store.) 



I have changed a few things in the todo.conf.
Most of the changes are cosmetic, like the color and font of the text. I am using the Symbola font.
There is a change in the last line that is super important, it tells it to run the sync-completed.sh 
every 300 seconds, that is the file that when run, moves the completed tasks to the month file.

SO lets talk about where the todo.txt and month files get placed/created. 
I have the todo.txt in my documents folder which you can see in the todo-path and the sync-completed.sh will make the month file, every month using the todo-path-month.

Thanks

