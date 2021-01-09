local2:
	cp -rf ocstore2/* --target-directory=/opt/lampp/htdocs/ocstore2/

local3:
	cp -rf ocstore3/* --target-directory=/opt/lampp/htdocs/ocstore3/

pack2:
	rm -rf ./upload/* ./alert.oc2.3.ocmod.zip
	rsync -r --exclude install.xml ocstore2/* upload
	zip -r alert.oc2.3.ocmod.zip ./upload
	zip -j alert.oc2.3.ocmod.zip ./ocstore2/install.xml

pack3:
	rm -rf ./upload/* ./alert.oc3.0.ocmod.zip
	rsync -r --exclude install.xml ocstore3/* upload
	zip -r alert.oc3.0.ocmod.zip ./upload
	zip -j alert.oc3.0.ocmod.zip ./ocstore3/install.xml
