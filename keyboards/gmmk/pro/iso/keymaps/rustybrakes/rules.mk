VIA_ENABLE = yes
MOUSEKEY_ENABLE = no
BOOTMAGIC_ENABLE = yes      # Enable Bootmagic Lite

IDLE_TIMEOUT_ENABLE = yes
STARTUP_NUMLOCK_ON = yes
ENCODER_DEFAULTACTIONS_ENABLE = no

INVERT_NUMLOCK_INDICATOR = yes

SRC += rustybrakes.c
ifdef ENCODER_ENABLE
	# include encoder related code when enabled
	ifeq ($(strip $(ENCODER_DEFAULTACTIONS_ENABLE)), yes)
		OPT_DEFS += -DENCODER_DEFAULTACTIONS_ENABLE
	endif
	ifeq ($(strip $(ALTTAB_SCROLL_ENABLE)), yes)
		OPT_DEFS += -DALTTAB_SCROLL_ENABLE
	endif
	SRC += rustybrakes_encoder.c
endif
ifeq ($(strip $(IDLE_TIMEOUT_ENABLE)), yes)
    OPT_DEFS += -DIDLE_TIMEOUT_ENABLE
endif
ifeq ($(strip $(STARTUP_NUMLOCK_ON)), yes)
    OPT_DEFS += -DSTARTUP_NUMLOCK_ON
endif
ifeq ($(strip $(EMOTICON_ENABLE)), yes)
    OPT_DEFS += -DEMOTICON_ENABLE
endif
ifeq ($(strip $(INVERT_NUMLOCK_INDICATOR)), yes)
    OPT_DEFS += -DINVERT_NUMLOCK_INDICATOR
endif
