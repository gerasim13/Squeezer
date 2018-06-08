# GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),debug_x32)
  ifeq ($(origin CC), default)
    CC = clang
  endif
  ifeq ($(origin CXX), default)
    CXX = clang++
  endif
  ifeq ($(origin AR), default)
    AR = ar
  endif
  TARGETDIR = ../../../bin/standalone
  TARGET = $(TARGETDIR)/squeezer_stereo_debug
  OBJDIR = ../../../bin/.intermediate_linux/standalone_stereo_debug/x32
  DEFINES += -DLINUX=1 -D_DEBUG=1 -DDEBUG=1 -DJUCE_CHECK_MEMORY_LEAKS=1 -DSQUEEZER_STEREO=1 -DJucePlugin_Build_LV2=0 -DJucePlugin_Build_Standalone=1 -DJucePlugin_Build_VST=0 -DJucePlugin_Build_VST3=0 -DJUCE_ALSA=1 -DJUCE_JACK=1 -DJUCE_ASIO=0 -DJUCE_WASAPI=0 -DJUCE_DIRECTSOUND=0
  INCLUDES += -I../../../JuceLibraryCode -I../../../libraries/juce/modules -I../../../Source/frut -I../../../libraries -I/usr/include -I/usr/include/freetype2
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O0 -g -Wall -Wextra -DHAVE_LROUND -fmessage-length=78 -fno-inline -ggdb
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O0 -g -Wall -Wextra -std=c++14 -DHAVE_LROUND -fmessage-length=78 -fno-inline -ggdb
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -ldl -lfreetype -lpthread -lrt -lX11 -lXext -lasound
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -Wl,--no-undefined
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x64)
  ifeq ($(origin CC), default)
    CC = clang
  endif
  ifeq ($(origin CXX), default)
    CXX = clang++
  endif
  ifeq ($(origin AR), default)
    AR = ar
  endif
  TARGETDIR = ../../../bin/standalone
  TARGET = $(TARGETDIR)/squeezer_stereo_debug_x64
  OBJDIR = ../../../bin/.intermediate_linux/standalone_stereo_debug/x64
  DEFINES += -DLINUX=1 -D_DEBUG=1 -DDEBUG=1 -DJUCE_CHECK_MEMORY_LEAKS=1 -DSQUEEZER_STEREO=1 -DJucePlugin_Build_LV2=0 -DJucePlugin_Build_Standalone=1 -DJucePlugin_Build_VST=0 -DJucePlugin_Build_VST3=0 -DJUCE_ALSA=1 -DJUCE_JACK=1 -DJUCE_ASIO=0 -DJUCE_WASAPI=0 -DJUCE_DIRECTSOUND=0
  INCLUDES += -I../../../JuceLibraryCode -I../../../libraries/juce/modules -I../../../Source/frut -I../../../libraries -I/usr/include -I/usr/include/freetype2
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O0 -g -Wall -Wextra -DHAVE_LROUND -fmessage-length=78 -fno-inline -ggdb
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O0 -g -Wall -Wextra -std=c++14 -DHAVE_LROUND -fmessage-length=78 -fno-inline -ggdb
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -ldl -lfreetype -lpthread -lrt -lX11 -lXext -lasound
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -Wl,--no-undefined
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x32)
  ifeq ($(origin CC), default)
    CC = clang
  endif
  ifeq ($(origin CXX), default)
    CXX = clang++
  endif
  ifeq ($(origin AR), default)
    AR = ar
  endif
  TARGETDIR = ../../../bin/standalone
  TARGET = $(TARGETDIR)/squeezer_stereo
  OBJDIR = ../../../bin/.intermediate_linux/standalone_stereo_release/x32
  DEFINES += -DLINUX=1 -DNDEBUG=1 -DJUCE_CHECK_MEMORY_LEAKS=0 -DSQUEEZER_STEREO=1 -DJucePlugin_Build_LV2=0 -DJucePlugin_Build_Standalone=1 -DJucePlugin_Build_VST=0 -DJucePlugin_Build_VST3=0 -DJUCE_ALSA=1 -DJUCE_JACK=1 -DJUCE_ASIO=0 -DJUCE_WASAPI=0 -DJUCE_DIRECTSOUND=0
  INCLUDES += -I../../../JuceLibraryCode -I../../../libraries/juce/modules -I../../../Source/frut -I../../../libraries -I/usr/include -I/usr/include/freetype2
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -fomit-frame-pointer -O3 -Wall -Wextra -DHAVE_LROUND -fmessage-length=78 -fvisibility=hidden -pipe
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -fomit-frame-pointer -O3 -Wall -Wextra -std=c++14 -DHAVE_LROUND -fmessage-length=78 -fvisibility=hidden -pipe
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -ldl -lfreetype -lpthread -lrt -lX11 -lXext -lasound
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -Wl,--no-undefined
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x64)
  ifeq ($(origin CC), default)
    CC = clang
  endif
  ifeq ($(origin CXX), default)
    CXX = clang++
  endif
  ifeq ($(origin AR), default)
    AR = ar
  endif
  TARGETDIR = ../../../bin/standalone
  TARGET = $(TARGETDIR)/squeezer_stereo_x64
  OBJDIR = ../../../bin/.intermediate_linux/standalone_stereo_release/x64
  DEFINES += -DLINUX=1 -DNDEBUG=1 -DJUCE_CHECK_MEMORY_LEAKS=0 -DSQUEEZER_STEREO=1 -DJucePlugin_Build_LV2=0 -DJucePlugin_Build_Standalone=1 -DJucePlugin_Build_VST=0 -DJucePlugin_Build_VST3=0 -DJUCE_ALSA=1 -DJUCE_JACK=1 -DJUCE_ASIO=0 -DJUCE_WASAPI=0 -DJUCE_DIRECTSOUND=0
  INCLUDES += -I../../../JuceLibraryCode -I../../../libraries/juce/modules -I../../../Source/frut -I../../../libraries -I/usr/include -I/usr/include/freetype2
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -fomit-frame-pointer -O3 -Wall -Wextra -DHAVE_LROUND -fmessage-length=78 -fvisibility=hidden -pipe
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -fomit-frame-pointer -O3 -Wall -Wextra -std=c++14 -DHAVE_LROUND -fmessage-length=78 -fvisibility=hidden -pipe
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -ldl -lfreetype -lpthread -lrt -lX11 -lXext -lasound
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -Wl,--no-undefined
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/include_juce_audio_basics.o \
	$(OBJDIR)/include_juce_audio_devices.o \
	$(OBJDIR)/include_juce_audio_formats.o \
	$(OBJDIR)/include_juce_audio_plugin_client_Standalone.o \
	$(OBJDIR)/include_juce_audio_plugin_client_utils.o \
	$(OBJDIR)/include_juce_audio_processors.o \
	$(OBJDIR)/include_juce_audio_utils.o \
	$(OBJDIR)/include_juce_core.o \
	$(OBJDIR)/include_juce_cryptography.o \
	$(OBJDIR)/include_juce_data_structures.o \
	$(OBJDIR)/include_juce_events.o \
	$(OBJDIR)/include_juce_graphics.o \
	$(OBJDIR)/include_juce_gui_basics.o \
	$(OBJDIR)/include_juce_gui_extra.o \
	$(OBJDIR)/include_juce_video.o \
	$(OBJDIR)/compressor.o \
	$(OBJDIR)/include_frut_audio.o \
	$(OBJDIR)/include_frut_dsp.o \
	$(OBJDIR)/include_frut_math.o \
	$(OBJDIR)/include_frut_parameters.o \
	$(OBJDIR)/include_frut_skin.o \
	$(OBJDIR)/include_frut_widgets.o \
	$(OBJDIR)/gain_stage_fet.o \
	$(OBJDIR)/gain_stage_optical.o \
	$(OBJDIR)/meter_bar_gain_reduction.o \
	$(OBJDIR)/meter_bar_level.o \
	$(OBJDIR)/plugin_editor.o \
	$(OBJDIR)/plugin_parameters.o \
	$(OBJDIR)/plugin_processor.o \
	$(OBJDIR)/side_chain.o \
	$(OBJDIR)/skin.o \

RESOURCES := \

CUSTOMFILES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

$(TARGET): $(GCH) ${CUSTOMFILES} $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking squeezer_standalone_stereo
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

clean:
	@echo Cleaning squeezer_standalone_stereo
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH)
$(GCH): $(PCH)
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/include_juce_audio_basics.o: ../../../JuceLibraryCode/include_juce_audio_basics.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_audio_devices.o: ../../../JuceLibraryCode/include_juce_audio_devices.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_audio_formats.o: ../../../JuceLibraryCode/include_juce_audio_formats.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_audio_plugin_client_Standalone.o: ../../../JuceLibraryCode/include_juce_audio_plugin_client_Standalone.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_audio_plugin_client_utils.o: ../../../JuceLibraryCode/include_juce_audio_plugin_client_utils.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_audio_processors.o: ../../../JuceLibraryCode/include_juce_audio_processors.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_audio_utils.o: ../../../JuceLibraryCode/include_juce_audio_utils.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_core.o: ../../../JuceLibraryCode/include_juce_core.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_cryptography.o: ../../../JuceLibraryCode/include_juce_cryptography.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_data_structures.o: ../../../JuceLibraryCode/include_juce_data_structures.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_events.o: ../../../JuceLibraryCode/include_juce_events.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_graphics.o: ../../../JuceLibraryCode/include_juce_graphics.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_gui_basics.o: ../../../JuceLibraryCode/include_juce_gui_basics.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_gui_extra.o: ../../../JuceLibraryCode/include_juce_gui_extra.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_juce_video.o: ../../../JuceLibraryCode/include_juce_video.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/compressor.o: ../../../Source/compressor.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_frut_audio.o: ../../../Source/frut/amalgamated/include_frut_audio.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_frut_dsp.o: ../../../Source/frut/amalgamated/include_frut_dsp.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_frut_math.o: ../../../Source/frut/amalgamated/include_frut_math.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_frut_parameters.o: ../../../Source/frut/amalgamated/include_frut_parameters.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_frut_skin.o: ../../../Source/frut/amalgamated/include_frut_skin.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/include_frut_widgets.o: ../../../Source/frut/amalgamated/include_frut_widgets.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gain_stage_fet.o: ../../../Source/gain_stage_fet.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gain_stage_optical.o: ../../../Source/gain_stage_optical.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/meter_bar_gain_reduction.o: ../../../Source/meter_bar_gain_reduction.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/meter_bar_level.o: ../../../Source/meter_bar_level.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/plugin_editor.o: ../../../Source/plugin_editor.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/plugin_parameters.o: ../../../Source/plugin_parameters.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/plugin_processor.o: ../../../Source/plugin_processor.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/side_chain.o: ../../../Source/side_chain.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/skin.o: ../../../Source/skin.cpp
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif