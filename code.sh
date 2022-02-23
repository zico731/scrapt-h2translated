
# telechargement de la page https://linuxcommandlibrary.com/basic/oneliners  --> index.html
#curl -o index.html https://linuxcommandlibrary.com/basic/oneliners


# grep h2 --> h2, traduction de h2 en francais  --> h2fr, fusion de h2 et h2fr en h2@h2fr --> h2_h2fr  
#cat index.html |grep -oP '(?<=<h2>).*(?=</)' >h2 && cat h2|trans -b :fr >h2fr && paste -d '@' h2 h2fr > h2_h2fr


# modification des h2 (en anglais) du fichier index.html avec h2_h2fr (en  francais) --> index.html est en francais
#while IFS="@" read old new; do sed -i "s/$old/$new/g" index.html; done < h2_h2fr
