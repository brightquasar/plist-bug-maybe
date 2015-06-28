Fistly; this project (as is) loads the tableView Cells very nicely (while using the current, 
smaller, People.plist file. That file has 11 dictionaies in it. I added 19 more dicitonaries  
giving a total of 30 (that ver of the plist file can be found next to the other one but named 
PeopleLarge.plist) I have tripple-checked every key in every dictionary for spelling and 
absence of a trailing space etcetera. I cannot see why the app does not successfully parse the
Lager plist file -- I would expect it to only find the 11 keys which my code is looking for 
anyway. I don't recall the exact method I used to insert those 11 images into the 
images.xcassets file, but they have been working there, and, I have never had images that were 
dragged into the bundle fail to be found by the plist. So, for now, I am leaving those 19 there. 
   
Once I get the plist problem solved, and finish my "guessing game" code, and add one more lable
to the Cell -- then we will try to debug the unarchiving of the images bug. 

I cannot see why it is not reloading and using the archive file which is written to Document 
dir. It does seem to be loading the /archive file, because it does populate the Cells with the 
label text. Only the images are missing. And, as I understand it, that text can only come from 
the same Person/people object in which the images should also be stored.  
