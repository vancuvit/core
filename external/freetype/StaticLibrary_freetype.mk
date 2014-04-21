# -*- Mode: makefile-gmake; tab-width: 4; indent-tabs-mode: t -*-
#
# This file is part of the LibreOffice project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

$(eval $(call gb_StaticLibrary_StaticLibrary,freetype))

$(eval $(call gb_StaticLibrary_set_warnings_not_errors,freetype))

$(eval $(call gb_StaticLibrary_set_include,freetype,\
    -I$(call gb_UnpackedTarball_get_dir,freetype)/include \
    $$(INCLUDE) \
	/FI $(call gb_UnpackedTarball_get_dir,freetype)/include/freetype/config/ftoption.h \
	/FI $(call gb_UnpackedTarball_get_dir,freetype)/include/freetype/config/ftstdlib.h \
	/FI $(call gb_UnpackedTarball_get_dir,freetype)/include/freetype/config/ftheader.h \
	/FI $(call gb_UnpackedTarball_get_dir,freetype)/include/freetype/config/ftconfig.h  \
))

#ifeq ($(OS),WNT)
#$(eval $(call gb_StaticLibrary_add_defs,freetype, \
#))
#endif

$(eval $(call gb_StaticLibrary_use_unpacked,freetype,freetype))

$(eval $(call gb_StaticLibrary_add_generated_cobjects,freetype,\
	UnpackedTarball/freetype/src/autofit/afangles \
	UnpackedTarball/freetype/src/autofit/afcjk \
	UnpackedTarball/freetype/src/autofit/afdummy \
	UnpackedTarball/freetype/src/autofit/afglobal \
	UnpackedTarball/freetype/src/autofit/afhints \
	UnpackedTarball/freetype/src/autofit/afindic \
	UnpackedTarball/freetype/src/autofit/aflatin \
	UnpackedTarball/freetype/src/autofit/aflatin2 \
	UnpackedTarball/freetype/src/autofit/afloader \
	UnpackedTarball/freetype/src/autofit/afmodule \
	UnpackedTarball/freetype/src/autofit/afpic \
	UnpackedTarball/freetype/src/autofit/afwarp \
	UnpackedTarball/freetype/src/autofit/autofit \
	UnpackedTarball/freetype/src/base/basepic \
	UnpackedTarball/freetype/src/base/ftadvanc \
	UnpackedTarball/freetype/src/base/ftapi \
	UnpackedTarball/freetype/src/base/ftbase \
	UnpackedTarball/freetype/src/base/ftbbox \
	UnpackedTarball/freetype/src/base/ftbdf \
	UnpackedTarball/freetype/src/base/ftbitmap \
	UnpackedTarball/freetype/src/base/ftcalc \
	UnpackedTarball/freetype/src/base/ftcid \
	UnpackedTarball/freetype/src/base/ftdbgmem \
	UnpackedTarball/freetype/src/base/ftdebug \
	UnpackedTarball/freetype/src/base/ftfstype \
	UnpackedTarball/freetype/src/base/ftgasp \
	UnpackedTarball/freetype/src/base/ftgloadr \
	UnpackedTarball/freetype/src/base/ftglyph \
	UnpackedTarball/freetype/src/base/ftgxval \
	UnpackedTarball/freetype/src/base/ftinit \
	UnpackedTarball/freetype/src/base/ftlcdfil \
	UnpackedTarball/freetype/src/base/ftmac \
	UnpackedTarball/freetype/src/base/ftmm \
	UnpackedTarball/freetype/src/base/ftobjs \
	UnpackedTarball/freetype/src/base/ftotval \
	UnpackedTarball/freetype/src/base/ftoutln \
	UnpackedTarball/freetype/src/base/ftpatent \
	UnpackedTarball/freetype/src/base/ftpfr \
	UnpackedTarball/freetype/src/base/ftpic \
	UnpackedTarball/freetype/src/base/ftrfork \
	UnpackedTarball/freetype/src/base/ftsnames \
	UnpackedTarball/freetype/src/base/ftstream \
	UnpackedTarball/freetype/src/base/ftstroke \
	UnpackedTarball/freetype/src/base/ftsynth \
	UnpackedTarball/freetype/src/base/ftsystem \
	UnpackedTarball/freetype/src/base/fttrigon \
	UnpackedTarball/freetype/src/base/fttype1 \
	UnpackedTarball/freetype/src/base/ftutil \
	UnpackedTarball/freetype/src/base/ftwinfnt \
	UnpackedTarball/freetype/src/base/ftxf86 \
	UnpackedTarball/freetype/src/bdf/bdf \
	UnpackedTarball/freetype/src/bdf/bdfdrivr \
	UnpackedTarball/freetype/src/bdf/bdflib \
	UnpackedTarball/freetype/src/bzip2/ftbzip2 \
	UnpackedTarball/freetype/src/cache/ftcache \
	UnpackedTarball/freetype/src/cache/ftcbasic \
	UnpackedTarball/freetype/src/cache/ftccache \
	UnpackedTarball/freetype/src/cache/ftccmap \
	UnpackedTarball/freetype/src/cache/ftcglyph \
	UnpackedTarball/freetype/src/cache/ftcimage \
	UnpackedTarball/freetype/src/cache/ftcmanag \
	UnpackedTarball/freetype/src/cache/ftcmru \
	UnpackedTarball/freetype/src/cache/ftcsbits \
	UnpackedTarball/freetype/src/cff/cff \
	UnpackedTarball/freetype/src/cff/cffcmap \
	UnpackedTarball/freetype/src/cff/cffdrivr \
	UnpackedTarball/freetype/src/cff/cffgload \
	UnpackedTarball/freetype/src/cff/cffload \
	UnpackedTarball/freetype/src/cff/cffobjs \
	UnpackedTarball/freetype/src/cff/cffparse \
	UnpackedTarball/freetype/src/cff/cffpic \
	UnpackedTarball/freetype/src/cid/cidgload \
	UnpackedTarball/freetype/src/cid/cidload \
	UnpackedTarball/freetype/src/cid/cidobjs \
	UnpackedTarball/freetype/src/cid/cidparse \
	UnpackedTarball/freetype/src/cid/cidriver \
	UnpackedTarball/freetype/src/cid/type1cid \
	UnpackedTarball/freetype/src/gxvalid/gxvalid \
	UnpackedTarball/freetype/src/gxvalid/gxvbsln \
	UnpackedTarball/freetype/src/gxvalid/gxvcommn \
	UnpackedTarball/freetype/src/gxvalid/gxvfeat \
	UnpackedTarball/freetype/src/gxvalid/gxvfgen \
	UnpackedTarball/freetype/src/gxvalid/gxvjust \
	UnpackedTarball/freetype/src/gxvalid/gxvkern \
	UnpackedTarball/freetype/src/gxvalid/gxvlcar \
	UnpackedTarball/freetype/src/gxvalid/gxvmod \
	UnpackedTarball/freetype/src/gxvalid/gxvmort \
	UnpackedTarball/freetype/src/gxvalid/gxvmort0 \
	UnpackedTarball/freetype/src/gxvalid/gxvmort1 \
	UnpackedTarball/freetype/src/gxvalid/gxvmort2 \
	UnpackedTarball/freetype/src/gxvalid/gxvmort4 \
	UnpackedTarball/freetype/src/gxvalid/gxvmort5 \
	UnpackedTarball/freetype/src/gxvalid/gxvmorx \
	UnpackedTarball/freetype/src/gxvalid/gxvmorx0 \
	UnpackedTarball/freetype/src/gxvalid/gxvmorx1 \
	UnpackedTarball/freetype/src/gxvalid/gxvmorx2 \
	UnpackedTarball/freetype/src/gxvalid/gxvmorx4 \
	UnpackedTarball/freetype/src/gxvalid/gxvmorx5 \
	UnpackedTarball/freetype/src/gxvalid/gxvopbd \
	UnpackedTarball/freetype/src/gxvalid/gxvprop \
	UnpackedTarball/freetype/src/gxvalid/gxvtrak \
	UnpackedTarball/freetype/src/gzip/adler32 \
	UnpackedTarball/freetype/src/gzip/ftgzip \
	UnpackedTarball/freetype/src/gzip/infblock \
	UnpackedTarball/freetype/src/gzip/infcodes \
	UnpackedTarball/freetype/src/gzip/inflate \
	UnpackedTarball/freetype/src/gzip/inftrees \
	UnpackedTarball/freetype/src/gzip/infutil \
	UnpackedTarball/freetype/src/gzip/zutil \
	UnpackedTarball/freetype/src/lzw/ftlzw \
	UnpackedTarball/freetype/src/lzw/ftzopen \
	UnpackedTarball/freetype/src/otvalid/otvalid \
	UnpackedTarball/freetype/src/otvalid/otvbase \
	UnpackedTarball/freetype/src/otvalid/otvcommn \
	UnpackedTarball/freetype/src/otvalid/otvgdef \
	UnpackedTarball/freetype/src/otvalid/otvgpos \
	UnpackedTarball/freetype/src/otvalid/otvgsub \
	UnpackedTarball/freetype/src/otvalid/otvjstf \
	UnpackedTarball/freetype/src/otvalid/otvmath \
	UnpackedTarball/freetype/src/otvalid/otvmod \
	UnpackedTarball/freetype/src/pcf/pcf \
	UnpackedTarball/freetype/src/pcf/pcfdrivr \
	UnpackedTarball/freetype/src/pcf/pcfread \
	UnpackedTarball/freetype/src/pcf/pcfutil \
	UnpackedTarball/freetype/src/pfr/pfr \
	UnpackedTarball/freetype/src/pfr/pfrcmap \
	UnpackedTarball/freetype/src/pfr/pfrdrivr \
	UnpackedTarball/freetype/src/pfr/pfrgload \
	UnpackedTarball/freetype/src/pfr/pfrload \
	UnpackedTarball/freetype/src/pfr/pfrobjs \
	UnpackedTarball/freetype/src/pfr/pfrsbit \
	UnpackedTarball/freetype/src/psaux/afmparse \
	UnpackedTarball/freetype/src/psaux/psaux \
	UnpackedTarball/freetype/src/psaux/psauxmod \
	UnpackedTarball/freetype/src/psaux/psconv \
	UnpackedTarball/freetype/src/psaux/psobjs \
	UnpackedTarball/freetype/src/psaux/t1cmap \
	UnpackedTarball/freetype/src/psaux/t1decode \
	UnpackedTarball/freetype/src/pshinter/pshalgo \
	UnpackedTarball/freetype/src/pshinter/pshglob \
	UnpackedTarball/freetype/src/pshinter/pshinter \
	UnpackedTarball/freetype/src/pshinter/pshmod \
	UnpackedTarball/freetype/src/pshinter/pshpic \
	UnpackedTarball/freetype/src/pshinter/pshrec \
	UnpackedTarball/freetype/src/psnames/psmodule \
	UnpackedTarball/freetype/src/psnames/psnames \
	UnpackedTarball/freetype/src/psnames/pspic \
	UnpackedTarball/freetype/src/raster/ftraster \
	UnpackedTarball/freetype/src/raster/ftrend1 \
	UnpackedTarball/freetype/src/raster/raster \
	UnpackedTarball/freetype/src/raster/rastpic \
	UnpackedTarball/freetype/src/sfnt/sfdriver \
	UnpackedTarball/freetype/src/sfnt/sfnt \
	UnpackedTarball/freetype/src/sfnt/sfntpic \
	UnpackedTarball/freetype/src/sfnt/sfobjs \
	UnpackedTarball/freetype/src/sfnt/ttbdf \
	UnpackedTarball/freetype/src/sfnt/ttcmap \
	UnpackedTarball/freetype/src/sfnt/ttkern \
	UnpackedTarball/freetype/src/sfnt/ttload \
	UnpackedTarball/freetype/src/sfnt/ttmtx \
	UnpackedTarball/freetype/src/sfnt/ttpost \
	UnpackedTarball/freetype/src/sfnt/ttsbit \
	UnpackedTarball/freetype/src/sfnt/ttsbit0 \
	UnpackedTarball/freetype/src/smooth/ftgrays \
	UnpackedTarball/freetype/src/smooth/ftsmooth \
	UnpackedTarball/freetype/src/smooth/ftspic \
	UnpackedTarball/freetype/src/smooth/smooth \
	UnpackedTarball/freetype/src/tools/apinames \
	UnpackedTarball/freetype/src/tools/test_afm \
	UnpackedTarball/freetype/src/tools/test_bbox \
	UnpackedTarball/freetype/src/tools/test_trig \
	UnpackedTarball/freetype/src/truetype/truetype \
	UnpackedTarball/freetype/src/truetype/ttdriver \
	UnpackedTarball/freetype/src/truetype/ttgload \
	UnpackedTarball/freetype/src/truetype/ttgxvar \
	UnpackedTarball/freetype/src/truetype/ttinterp \
	UnpackedTarball/freetype/src/truetype/ttobjs \
	UnpackedTarball/freetype/src/truetype/ttpic \
	UnpackedTarball/freetype/src/truetype/ttpload \
	UnpackedTarball/freetype/src/type1/t1afm \
	UnpackedTarball/freetype/src/type1/t1driver \
	UnpackedTarball/freetype/src/type1/t1gload \
	UnpackedTarball/freetype/src/type1/t1load \
	UnpackedTarball/freetype/src/type1/t1objs \
	UnpackedTarball/freetype/src/type1/t1parse \
	UnpackedTarball/freetype/src/type1/type1 \
	UnpackedTarball/freetype/src/type42/t42drivr \
	UnpackedTarball/freetype/src/type42/t42objs \
	UnpackedTarball/freetype/src/type42/t42parse \
	UnpackedTarball/freetype/src/type42/type42 \
	UnpackedTarball/freetype/src/winfonts/winfnt \
))

# vim: set noet sw=4 ts=4:
