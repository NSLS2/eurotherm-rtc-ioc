TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = eurotherm-rtc
# eurotherm-rtc.dbd will be created and installed
DBD += eurotherm-rtc.dbd

# eurotherm-rtc.dbd will be made up from these files:
eurotherm-rtc_DBD += base.dbd
eurotherm-rtc_DBD += asyn.dbd
eurotherm-rtc_DBD += drvAsynIPPort.dbd
eurotherm-rtc_DBD += modbusSupport.dbd
eurotherm-rtc_DBD += devIocStats.dbd
eurotherm-rtc_DBD += asSupport.dbd
eurotherm-rtc_DBD += reccaster.dbd 
eurotherm-rtc_DBD += caPutLog.dbd

# Include dbd files from all support applications:
#eurotherm-rtc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#eurotherm-rtc_LIBS += xxx
eurotherm-rtc_LIBS += asyn
eurotherm-rtc_LIBS += modbus
eurotherm-rtc_LIBS += devIocStats
eurotherm-rtc_LIBS += autosave 
eurotherm-rtc_LIBS += reccaster
eurotherm-rtc_LIBS += caPutLog

# eurotherm-rtc_registerRecordDeviceDriver.cpp derives from eurotherm-rtc.dbd
eurotherm-rtc_SRCS += eurotherm-rtc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
eurotherm-rtc_SRCS_DEFAULT += eurotherm-rtcMain.cpp
eurotherm-rtc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#eurotherm-rtc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
eurotherm-rtc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

