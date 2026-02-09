##################################################################
# Board PID # Board Name       # PRODUCT # Note
##################################################################
# MERCUSYS AC12G v1  # MERCUSYS AC12G v1    # MT7620  #
##################################################################

CFLAGS += -DBOARD_AC12G-V1 -DVENDOR_TPLINK
BOARD_NUM_USB_PORTS=0

### TP-LINK firmware description ###
TPLINK_HWID=0x04DA857C
TPLINK_HWREV=0x0C000600
TPLINK_HWREVADD=0x04000000
TPLINK_FLASHLAYOUT=8Mmtk
TPLINK_HVERSION=3
