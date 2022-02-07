TOOLS = upload.sh cyginst-icosfit.ps1 cyginst-monarch-devel.ps1 cyginst-hwv.ps1
tools :
	tools/config-tools.sh
clean :
	rm -f $(TOOLS)
.PHONY : tools clean
