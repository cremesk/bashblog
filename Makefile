BINDIR ?= /usr/local/bin

install:
	@echo Installing the executable to $(BINDIR)
	@mkdir -p $(BINDIR)
	@cp -f bb.sh $(BINDIR)/bb
	@chmod 755 $(BINDIR)/bb

uninstall:
	@echo Removing the executable from $(BINDIR)
	@rm -f $(BINDIR)/bb

.PHONY: install uninstall

