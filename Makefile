PHP := php -dmemory_limit=-1
SATIS := vendor/bin/satis
COMPOSER := $(shell which composer.phar 2>/dev/null || which composer 2>/dev/null)

all: dist/packages.json deploy

.PHONY: deploy
deploy:
	cd dist && git add --all && git commit -m "chore: Deploy" && git push

dist/packages.json: dist/.git $(SATIS) Makefile satis.json
	$(PHP) $(SATIS) build satis.json dist

dist/.git:
	git clone git@github.com:opencodeco/composer.git dist -b gh-pages --depth=1

$(SATIS): composer.lock
	$(PHP) $(COMPOSER) install
	touch $@
