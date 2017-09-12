# images
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
Drop = ~/Dropbox
include sub.mk
-include $(ms)/perl.def

######################################################################

## File drop location in local.mk
Sources += local.jd
jd:
	cp local.jd local.mk

##################################################################

## Content

intro.html: intro.step

ns.html: ns.step

######################################################################

## Special pictures
## Still thinking about how to handle this. For now, maybe put stuff into Pearson??

######################################################################

-include $(ms)/webpix.mk ## makestuff/webpix.mk
-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
