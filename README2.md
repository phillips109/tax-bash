#This is README2.md

December 14, 2023
This major overhaul of 4Calc was necessitated by two factors:
1. The oneline record format was awkward when writing cnum or ctext file.
   Long lines were required to make the entries line up in a readable fashion.

2. The compiler seemed to work fine with code such as:
   VariableA = VariableB + VariableC
   The compiler knew to calculate VariableB and VariableC before calculateing Variable A.
   Consequently, I thought I could simplify complex If statements with code like this:
   
   Variable 1
     If a = b
       value of VariableA
     Else
       value of Variable 1a
   EndVariable
   
   Variable 1a
     If c = d
       value of VariableB
     Else
       value of VariableC
   EndVariable

This kind of code eliminated and nesting of elseIf's and was simpler to write in an awk database

However, the compiler had no compunctions about the order in which it calculated the variables so that the calculations were eratic.

So the changes made were to keep the single line record
(Fields separated by spaces and tabs ending in an exlamation point, records separated by a newline)
for all types except cnum and ctext until they were entered
and then switch to a multiline record (Records separated by a blank line, fields separated by a new line)
for the entry of cnum and ctext types.
(The types differ only in the output, cnum output being numerical and ctext being textual.)

Then a return to the concept that variable have no dependencies and
are essentially functions of the type O=S(I).
That is Output = Stylesheet of Input.
To do this for a complex entry such as line 16 of Form1040 requires nested If's.

In Xsl the If clause is expressed like this:
<variable name = 1>
  <Choose>
    <when test= "a = b">
      <value-of select="c"/>
    </when>
    <when test="a = e">
    <value-of select="d"/>
    </when>
    <otherwise>
      <value-of select="d"/>
    </otherwise>
  </choose>
</variable>  

More complex logic is achieved by nesting another <choose> under one of the <when>'s.

In order to make the creation of the awk simple I used a 6 character prefix for the lines:
CHOOS1
WHEN01
VALU0F
WHEN02
WHEN01
VALU0F
WHEN02
OTHER1
OTHER2
CHOOS2

The only lines that need to be completed are:
WHEN01 which is completed with the test statement
VALU0F which is completed with the select statement

You can have one or more WHEN'S.
You can have zero or one OTHER.

Another CHOOS1 can be nested under any WHEN01

With this information the program will write the proper code.