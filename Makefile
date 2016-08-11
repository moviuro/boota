PREFIX := /usr/local
BINDIR := $(PREFIX)/bin
ETCDIR := /etc
HOOKSDIR := $(ETCDIR)/pacman.d/hooks
MANDIR := /usr/share/man
LICENSEDIR := /usr/share/licenses

install: ## Install boota
	@install -Dm 0555 boota $(BINDIR)/boota
#	@install -Dm 0444 LICENSE $(LICENSEDIR)/butter/LICENSE
	@sed -e "s!@BINDIR@!$(BINDIR)!g" 20-boota.hook.in > 20-boota.hook
	@install -Dm 0444 20-boota.hook $(HOOKSDIR)/20-boota.hook

uninstall : ## Uninstall boota
	@rm    $(BINDIR)/boota
#	@rm    $(LICENSEDIR)/butter/LICENSE
	@rm    $(HOOKSDIR)/20-boota.hook
