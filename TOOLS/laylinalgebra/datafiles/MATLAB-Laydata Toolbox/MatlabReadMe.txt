
The M-files in the Laydata Toolbox are designed to accompany 
    Linear Algebra and Its Applications, Updated Third Edition 
by David C. Lay.   ISBN 0-321-28713-4.  
Copyright 2006 Pearson Education, Inc. Publishing as Pearson Addison-Wesley.
-----------------------------------------------------------------

INSTALLING  laydata   INTO THE MATLAB PATH
The M-files in the Laydata Toolbox are not part of commercial MATLAB, so they must be installed. The idea is to copy the files into a new folder inside the MATLAB folder, and then append the address of the new folder to the MATLAB path. The files are intended for use with MATLAB 5, 6 and 7.
-----------------------------------------------------------------

INSTRUCTIONS FOR WINDOWS COMPUTERS:
  1. Start MATLAB and enter the command:  path   This command will display a list of the folders that MATLAB searches whenever a command is given.  For example, one line of the "path" might be C:\MATLAB6p1\toolbox\matlab\general.  Choose a folder or subfolder inside one of the MATLAB folders and create a new folder called laydata.  In this example, the address of the new folder could be C:\MATLABp6\toolbox\laydata .
  2. Unzip the MATLAB-laydata.zip file into this new laydata folder.
  3. Return to the MATLAB program, and select "Set Path.." from the File menu at the top of the program window..
    a. In MATLAB 5, use "Browse" to find the Laydata folder, and click OK.  Under the path menu, select "Add to Path."  Finally, choose "Save Path" from the File menu of the Path browser.
    b. In MATLAB 6 and 7, select "Add with Subfolders", find the laydata folder in the directory tree, highlight the folder, and select "Save" on the Set Path menu..
   
INSTRUCTIONS FOR MACINTOSH COMPUTERS:  
  1. Use the program Stuffit to unstuff the files into a folder called laydata. 
  2. Open MATLAB.  From the File menu in MATLAB, select Open.  Select one of the M-files from the laydata folder (to open the file as if for editing); then close the file.  After this, MATLAB will always know to look in that laydata folder. 

INSTRUCTIONS FOR MATLAB ON A NETWORK
Ask the system administrator to store your files in a laydata folder and adjoin the address of the folder to MATLAB's path.  
----------------------------------------------------------------

The Laydata Toolbox contains commands that are not part of the commercial MATLAB package:  
   bgauss, gauss, gs, nulbasis, proj, randomint,
   randomstoc, ref, replace, scale, swap,  
 
A few other commands are included for specialized applications.
The Laydata Toolbox also contains numerical data for over 800 exercises, organized by sections in the text.  For instance, after you have completely installed the Laydata Toolbox, you can open MATLAB and type c2s1 to obtain the data for exercises in Chapter 2, Section 1. You will receive a prompt, asking which exercise you wish to study.  

The Study Guide, which accompanies Linear Algebra and Its Applications, 3rd edition Update, is the "lab manual" for using these files.  An appendix in the Study Guide describes how to get started using MATLAB and how to save and print your output. MATLAB "boxes" in the Study Guide introduce MATLAB commands as they are needed for various exercises.  You can also type  help name  in the MATLAB command window, where "name" is the MATLAB command.  
-----------------------------------------------------------------

The author and Pearson Addison-Wesley make no representation or warranty of any kind, expressed or implied, with regard to the programs contained herein, including without limitations any implied warranties of merchantability or fitness for particular purposes, all of which are expressly disclaimed. The author and Pearson Addison-Wesley shall not be liable for incidental or consequential damages in connection with or arising out of the use of these programs.
August 2005
(c) Pearson Addison-Wesley, 2005
