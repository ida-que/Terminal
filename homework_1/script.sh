FOLDER="folder_4"

rm -rf $FOLDER 						&& echo "rm -rf ${FOLDER}" \
&& mkdir $FOLDER 					&& echo "mkdir ${FOLDER}" \
&& cd $FOLDER  						&& echo "cd ${FOLDER}" \
&& mkdir fol1 fol2 fol3 				&& echo "mkdir fol1 fol2 fol3" \
&& cd fol1  						&& echo "cd fol1" \
&& touch f1.txt f2.txt f3.txt j1.json j2.json 		&& echo "touch f1.txt f2.txt f3.txt j1.json j2.json" \
&& mkdir subfol1 subfol2 subfol3 			&& echo "mkdir subfol1 subfol2 subfol3" \
&& ls -la 						&& echo "ls -la" \
&& mv -t subfol1 f1.txt f2.txt 				&& echo "mv -t subfol1 f1.txt f2.txt"
