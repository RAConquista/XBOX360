Ein Tool zum Bearbeiten von Skins, aber auch von Elementen des FSD veröffentlicht. Dieses Programm kam auch zur Erstellung des aktuellen F3Plugin zum Einsatz. Es konvertiert XUI Dateien in XURv8 Dateien, um Veränderungen am HUD vorzunehmen. Die Elemente, welche wir aktuell im HUD/Guide (Miniblade) sehen wurden auch mit diesen Programm erzeugt. Lest Euch das Zitat in Ruhe durch, um weitere wichtige Infos zu erhalten.

This program will essentially take XUI files developed with XuiTool and convert them to XURv8 files that are used by the kernel/dash to show the HUD. Additionally, it'll let you load those XURv8 files and convert them to XUI files that you can then load in XUITool.

This is the very same tool we used when creating the stuff you see in HUD now. 

Please keep in mind... this tool was only developed enough to work for us, and while we think its pretty damn good, its not perfect. Also, I am way too lazy to write a how-to, so I am hoping someone with the smarts can figure it out on their own and then write a tutorial for people everywhere to use.

In addition to the program, I am providing the complete source code for the project in hopes that it is expanded, improved and continues to be used whether thats for skinning FSPlugin stuff, or writing your own programs or plugins that modify HUD or the dash in some way. Only thing we ask is that you give us some credit if you do use any of the source for your own projects (thanks!)

The screenshot below represents the program in action. This is after I loaded SystemLink.xur (a file from f3plugin). It shows the converted heirarchy and even shows timeline information. It is an amazing piece work and Wondro and I spent weeks reverse engineering the XURv8 format for use with LiNK and ultimately I am glad we are finally sharing it.

Lastly, if you do use this program to create custom HUD skins for LiNK, do so at your own risk. Hud has a very small amount of memory available and overloading it with images, scenes and animations, you are likely going to cause instability in most games, crashes, etc. 

Anyway, thanks to everyone in TeamFSD, Wondro, cOz, Anth0ny, Natelx, and DeadlyD for either information or help in building this program and thanks to the fans who have enjoyed using LiNK and the programs we've built. I look forward to seeing what happens with this.
