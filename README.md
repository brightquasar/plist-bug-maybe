Firstly; this project (as is), and upon not finding an /archive file, loads the tableView Cells 
very nicely, though I was forced to hand-code my own People.plist file -- the thing has a total 
of 30 Dictionaries, But I have only been successful in using the first few and cannot spot why.
   
It is now time to try to debug the unarchiving (or archiving) of the images bug -- images taken 
from the photo lib do persist, but the original Cell images only show when loaded from the plist
 file. Subsequent runs result in good text and PhotoLib restorations, but the other Cell images 
are either not populated, or, are overwritten with nothingness.  

I should also like to fix the big in which the Detail view image reverts to my hard-coded 
storyboard image whenever the persons last name is changed to an incorrect name. That I presume 
will require some fancy delegation of some sort, or, persisting a value in DetailViewController 
which could then be subsequently read by ViewController.swift and used to put-up the lost image.  

Since the text and added images are being loading from the /archive file, I do not understand 
why my images are not appearing as they should. As I understand it, that text and those Photo- 
lib images can only come from the same Person/people object in which the images should also be 
