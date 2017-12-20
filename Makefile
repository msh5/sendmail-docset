all: build archive

build:
	./build.sh

archive:
	tar --exclude='.DS_Store' -zcvf milter.tgz milter.docset

clean:
	rm -f sendmail.*.tar.gz milter.tgz
	rm -rf sendmail-* milter.docset
