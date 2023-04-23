FOLDER="folder_4"

rm -rf $FOLDER 						&& echo "1. folder_4 has been removed if created before" \
&& mkdir $FOLDER 					&& echo "2. folder_4 created" \
&& cd $FOLDER  						&& echo "3. changed directory to folder_4" \
&& mkdir fol1 fol2 fol3 				&& echo "4. fol1, fol2 and fol3 are created" \
&& cd fol1  						&& echo "5. changed directory to fol1" \
&& touch f1.txt f2.txt f3.txt j1.json j2.json 		&& echo "6. f1.txt, f2.txt, f3.txt, j1.json, j2.json are created" \
&& mkdir subfol1 subfol2 subfol3 			&& echo "7. subfol1, subfol2, subfol3 are created" \
&& ls -la 						&& echo "8. shown above what fol1 has inside" \
&& mv -t subfol1 f1.txt f2.txt 				&& echo "9. f1.txt and f2.txt moved to subfol1" \
&& echo "SCRIPT SUCCESSFULLY EXECUTED! CONGRATS!"
