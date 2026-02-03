## How to Contribute to Tax-bash
Tax-bash consists of two parts.
One is Tax-bash itself which you can use to calculate and file your U.S. Income Tax Return.
The second is Formfactory which is where you can create the tax forms that comprise a tax return.
You may contribute in two ways:
1. Use tax-bash, report any errors and indicate any forms you may need.
   You can use T23 to calculalte your 2023 income tax and compare the results with the return you filed.
   You can use T24 to calculate your 2024 tax return. Please check the results manually or in comparison to Turbo-tax or Tax-Cut
2. Help to create the forms that comprise a return. You do not need to be a trained programmer to do this.

## USING TAX-BASH
To use Tax-bash you need to download a copy onto your computer.
1. Go to Formfactory/T24
2. Click on the file T24.tar.gz
3. Click on the RAW button at the right.
4. click on Save File and click OK.
5. Do the same with the file deTarT24.sh
Ths will download these two files to your computer usually to ~/Downloads.

1. Create a folder somewhere on your computer to hold Tax-bash such as ~/TB
2. You may wish to create a folder under TB for your returns.
   This will allow you to create other folders for say your wife's for a son's returns.
   I use my initials for this folder(PW).
3. Go to the TB/PW folder.
4. Move the ~/Downloads/T24.tar.gz file to this folder.
5. Move the ~/Downloads/deTarT24.sh file to this folder.
6. Give the deTarT24.sh file permissions (chmod 755 deTarT24.sh)
7. Run deTarT24.sh (./deTarT24.sh)
   This will Create a new Folder called T24 under PW that will contain Tax-bash.
8. Go to T24/Main and type ./tax-bash to start Tax-bash.
   You wil be presented with a menu that will guide you as well as a README file.
9. Once the 2025 version is available in January 2026. place the 2025 version in a T25 folder next to the T24 folder,
   following the same process using T25 instead of T24.   

## How to update your program at any time
1. Download T24.tar.gz
2. Go to your equivalent of TB/PW
3. Move T24.tar.gz from ~/Downloads to TB/PW
4. Run deTarT24.sh (./deTarT24.sh)
Your program will be updated without overwriting your previously entered data.

## USING FORMFACTORY

I have not used github previously so I do not know exactly how the work will proceed.
I think it will be something like this:
1. You will fork Tax-bash to your account.
2. You will clone tax-bash to your computer.
3. You will creae a branch for the form you intend to work on.
4. You will follow the steps folder by folder. (See README.md for a description.)
   1Pdf2jpg
   2Sequence
   3Layout
   4Calc
   5Menu
   6Gui
   
The process will create a form that is added to folder 7App.
7App contains the program tax-bash and should not be touched.

I suspect that as you complete each folder that you will submit a Pull Request.
I will review it to see if it works and them will commit it.
The Pull Request will let others know what you are working on and prevent too much duplication of effort.

PLEASE NOTE: You do not need to be a programmer to contribute to this process.
It will just take a little practice.
   
   




