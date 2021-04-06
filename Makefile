filename := schroetter-crackling-$(shell date +%Y%m%d).zip
checksum := $(filename).md5sum

all: hash

zip:
	$(RM) $(filename)
	zip -r $(filename) ./*/

hash: zip
	$(RM) $(checksum)
	md5sum $(filename) | tee $(checksum)

clean:
	$(RM) *.md5sum *.zip
