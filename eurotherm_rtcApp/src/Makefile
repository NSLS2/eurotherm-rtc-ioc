TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = eurotherm_rtc
# eurotherm_rtc.dbd will be created and installed
DBD += eurotherm_rtc.dbd

# eurotherm_rtc.dbd will be made up from these files:
eurotherm_rtc_DBD += base.dbd
eurotherm_rtc_DBD += asyn.dbd
eurotherm_rtc_DBD += drvAsynIPPort.dbd
eurotherm_rtc_DBD += modbusSupport.dbd
eurotherm_rtc_DBD += devIocStats.dbd
eurotherm_rtc_DBD += asSupport.dbd
eurotherm_rtc_DBD += reccaster.dbd 
eurotherm_rtc_DBD += caPutLog.dbd

# Include dbd files from all support applications:
#eurotherm_rtc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#eurotherm_rtc_LIBS += xxx
eurotherm_rtc_LIBS += asyn
eurotherm_rtc_LIBS += modbus
eurotherm_rtc_LIBS += devIocStats
eurotherm_rtc_LIBS += autosave 
eurotherm_rtc_LIBS += reccaster
eurotherm_rtc_LIBS += caPutLog

# eurotherm_rtc_registerRecordDeviceDriver.cpp derives from eurotherm_rtc.dbd
eurotherm_rtc_SRCS += eurotherm_rtc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
eurotherm_rtc_SRCS_DEFAULT += eurotherm_rtcMain.cpp
eurotherm_rtc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#eurotherm_rtc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
eurotherm_rtc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

