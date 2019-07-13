BINDIR ?= /usr/local/bin

install:
	@echo Installing the executable to $(BINDIR)
	@mkdir -p $(BINDIR)
	@cp -f bb.sh $(BINDIR)/bb
	@cp -f .config $(BINDIR)/bb_user_conf.tmpl
	@chmod 755 $(BINDIR)/bb

uninstall:
	@echo Removing the executable from $(BINDIR)
	@rm -f $(BINDIR)/bb
	@rm -f $(BINDIR)/bb_user_conf.tmpl

.PHONY: install uninstall
