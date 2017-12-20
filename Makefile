all: build archive

build:
	./build.sh

archive:
	tar --exclude='.DS_Store' -zcvf Sendmail_Milter.tgz Sendmail_Milter.docset

clean:
	rm -f sendmail.*.tar.gz Sendmail_Milter.tgz
	rm -rf sendmail-* Sendmail_Milter.docset
