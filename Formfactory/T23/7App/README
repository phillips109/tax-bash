Copyright(C) 2019 Phillips Wedemeyer

This file is part of a program called Tax-bash.

Tax-bash is free software: you can redistibute it and/or modify
it under the terms of the FNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Tax-bash is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.

README

	This file provides the directions for installing and running Tax-bash.
Tax-Bash is a program designed to bring to Linux a program that will do 
your taxes much like Tax-Cut@ or TurboTax@ in Windows or on the Mac.

     Tax-bash imports your data from GnuCash exactly as you specify for each 
line. To do this, you specify which accounts contain the transactions that you
want included on this line. You do this by choosing d) from the main menu and
following subsequent menus to the line you wish to edit. 

	  For instance, if the line is Schedule C, line 12, which calls for 
professional fees, you might list accounts such as Attorney Fees and Accountant
Fees. The program will then select the transactions(fees) spent in the tax year,
total them for each account, and then add the two account totals together to 
get the amount to be entered on the line. These account names can remain in
place from year to year without need for changing unless you so desire.

        The account names are case-sensitive and must be entered exactly. To help you the main menu has an option ln) to provide you with a list of all the 
accounts you have in your GnuCash files.

	 To see the transactions in all the accounts attached to a particular
form or schedule, choose ft) from the main menu.

        To see the transactions in a specific account, choose at) from the main
menu.

        If you want to select only certain transactions from and account, this
is best achieved in GnuCash. For instance, under Accountant Fees you could 
create a sub-account labelled DeductibleAccountantFees(Names without spaces
are easier to work with) into which you could move the fees you wanted
to include.     	
 
        At the end of the year you may have transactions such as charitable
contributions that are not credited until the next year. You can handle this 
in GnuCash by changing the date on the transaction. Alternatively, you can
add or subtract the transactions using a) from the main menu. This solves
this problem as well as the one described in the previous paragraph, but
leaves your GnuCash data untouched.

        At any time you can view your form, schedule, or worksheet in Pdf 
by using the f), s), and w) options on the main menu. These forms have links 
on each entry that bring up directions for that line and navigation routes
to where the entry comes from or to which line it goes. Within this link is
a link to the IRS line-by-line instructions for the entry. This should make
step by step instructions of Tax-Cut and TurboTax unnecessary and allow you 
to start whereever you please. Try it and see how you like it. We could add 
the step-by-step in the future.

       Whenever you enter or edit your data, the program must recalculate
ALL the data, not just the part you added. (This may change in the future.)
This takes time. A little less than a minute. When you are doing your taxes
this is not an outrageous amount of time. However, you can reduce this by
only recalculating after you have made several changes.

      The program, when it calculates, goes through the following steps:
         1) It accesses the data from your GnuCash files.
         2) Last years return is accessed.
         3) Last years data (account allocations) is accessed.
       These three steps take 10 minutes but need only be done once unless
       you alter your GnuCash data.
         4) It removes all transactions that are not from the current year.
         5) It places the transactions in the proper account.
         6) It totals the transactions for each account.
         7) If you have made any additions or subtractions to the accounts,
            this is corrected here
         8) The data files are consulted to see which accounts go to which
            tax lines. The transactions for the tax line are totaled.
            The result is an XML file of the entry for each line.
         6) The data is inserted into the form, schedule, or worksheet,
            and the resultant form, schedule, or worksheet is displayed.

        When you change your account transactions within Tax-bash,  
recalculation starts at step 5. This is what ar) from the main menu
does. This takes about 60 seconds.

        When you change your data (which accounts go to which lines or 
numerical overrides), recalculation begins at step 8. This takes 
about 50 seconds.  

        Displaying your forms is almost instantaneous. Once displayed, the
form will remain visible until you remove it. This allows you to jump from
one form to another at will. So if the link on a line says it comes from
or goes to another form you can jump there with ease.

        The forms are pdf and can be printed with precision and submitted
by mail. It should be possible to present the data in a form for electronic
filing, but this has not been attempted as yet because you need someone who
will accept it. An alternative is to manually enter the data into the IRS's
forms on-line for quick delivery.

        One State Income Tax Return is included. My home state of PA.
It is to be hoped that developers will be recruited to do the State Returns.

        The program is written in XSL and FO. The beauty of this language is
that there are no variables or iterators. This means that developers can
work independently, knowing that they cannot interfere with each other. This
would allow the work of producing a new program to be divided among a large
number of volunteers. The more there are the quicker the program is ready.
For those who would like to be a developer, the code is easily readable and
very repetitive, so that amateurs can get the hang of it in a short time.

       The user interface is written in bash, since it is available on all
Linux systems. Hence the name: Tax-bash. This interface is one simple file
of menus. Should anyone perfer a fancier interface, it would be simple to 
write one in Python or Scribe or any other language to give the look 
desired.  Thus you could have Tax-python or Tax-scribe. All of these interfaces
could be available to the user to choose, without affecting the underlying
XSL-FO backbone. Before going to a different user interface, try this bash
one. It is quick, and after a short learning curve, very easy to use.

       A note on installation: The program's overall folder is called Tax-bash.
It currently contains one sub-folder:T23 which contains all the folders necessary for the year 2023. The program for the 2024 year will be installed as T24.
Tax-bash can be installed anywhere on your computer.
      The program uses the java programs for XSL and FO. The C based version does not work. Therefore you must specify your JAVAHOME and the classpath for the xalan2.jar and the fop.jar need to be specified. The next few paragraphs will
describe how to do this.
