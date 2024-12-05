#!/bin/bash

for file in                                      \
                1Pdf2Jpg/Main/p2jMenu          \
		1Pdf2Jpg/Main/licNotice          \
		1Pdf2Jpg/Sed/convertpdf2jpg.sh   \
		1Pdf2Jpg/Sed/unzipDownloads.sh   \
		2Sequence/Awk/changeOrder.awk    \
		2Sequence/Awk/menu2.awk          \
		2Sequence/Awk/sorta.awk          \
		2Sequence/Awk/sortd.awk          \
		3Layout/README3.md               \
	        3Layout/2Fo/*                    \
		3Layout/Awk/2chOrder.awk         \
		3Layout/Awk/chOrder.awk          \
		3Layout/Awk/makeLayout.awk       \
		3Layout/Awk/makeLOutput.awk      \
		3Layout/Awk/makeMultiLineLot.awk \
		3Layout/Awk/makePreLot.awk       \
		3Layout/Awk/rmdir.awk            \
		3Layout/Awk/setCols.awk          \
		3Layout/Data/*                   \
		3Layout/Layouts/*               \
		3Layout/Lo/*                     \
		3Layout/Lot/*                    \
		3Layout/Make/cpPre2Lot.sh        \
		3Layout/Main/layoutmenu          \
		3Layout/Make/make22Fo.xsl        \
		3Layout/Make/makeDataFile.xsl    \
		3Layout/Make/makeTextFileblank.xsl \
		3Layout/Make/simplify1.sh        \
		3Layout/Make/simplify2.sh        \
		3Layout/Make/simplify.sh         \
		3Layout/MultiLine/*              \
		3Layout/Output/*                 \
		3Layout/PreLot/*                 \
		3Layout/Sed/*                    \
		4Calc/2Fo/*                      \
		4Calc/Awk/*                      \
     		4Calc/BaseXsl/*                  \
		4Calc/Dat/*                      \
		4Calc/Data/*                     \
		4Calc/EdPre/*                    \
		4Calc/Fo/*                       \
		4Calc/Input/*                    \
		4Calc/Lines/*                    \
		4Calc/Main/calcMenu              \
		4Calc/Make/*                     \
		4Calc/NewCopy/*                  \
		4Calc/PreDat/*                   \
		4Calc/Sed/*                      \
		4Calc/Total/*                    \
		4Calc/Variables/*                \
		4Calc/Xsl/*                      \
		5Menu/README.md                  \
		5Menu/Awk/*                      \
		5Menu/Awk/NotUsed/*              \
		5Menu/Data/*                     \
		5Menu/Files/*                    \
		5Menu/Main/*                     \
		5Menu/Make/*                     \
		5Menu/Menus/*                    \
		5Menu/Sed/*                      \
		6UI/Files/*                      \
		6UI/Main/*                       \
		6UI/Make/*                       \
		6UI/Original/*                   \
		6UI/TaxBash/*                    \
		6UI/TaxBashBkup/*
	    
do
    echo $file
#    sed 's/Copyright 20../Copyrigh(C) 2023, 2024/g' $file > $file.tmp		
#    sed 's/Copyright(C) 20../Copyright(C) 2023, 2024/g' $file.tmp > $file.tmp1
#    sed 's/FNU/GNU/g' $file.tmp1 > $file.tmp2
#    sed 's/PUPOSE/PURPOSE/g' $file.tmp2 > $file.tmp3
#    rm $file.tmp
#    rm $file.tmp1
#    rm $file.tmp2
#    mv $file.tmp3 $file
      
done
