#/bin/bash
for D in *; do
    if [ -d "${D}" ]; then
        echo "Enter directory: ${D}"   # your processing here
	mkdir ${D}/raw
	mkdir ${D}/jpg
	cd ${D}
	for f in *.JPG; do
		echo "moving: ${f}"
		mv ${f} jpg/
	done
	for f in *.ARW; do
		echo "moving: ${f}"
		mv ${f} raw/
	done
	cd ..
    fi
done