#!../../bin/linux-x86_64/eurotherm_rtc

#- You may have to change eurotherm_rtc to something else
#- everywhere it appears in this file

< envPaths
#< netsetup.cmd

## Generic EnvSet
epicsEnvSet("SYS","Test-CT")
epicsEnvSet("IOC_PREFIX","$(SYS){IOC:RTC}")


## Register all support components
dbLoadDatabase("$(TOP)/dbd/eurotherm_rtc.dbd",0,0)
eurotherm_rtc_registerRecordDeviceDriver(pdbbase) 

# Controller-specific variables
epicsEnvSet("PORT","tsrvx-px")
epicsEnvSet("DEV","{RG:T}")
epicsEnvSet("IP","192.168.111.222")

drvAsynIPPortConfigure("$(PORT)", "$(IP):502", 0, 0, 1)
modbusInterposeConfig("$(PORT)", 0, 2000, 0)
< EPC3016_modbus.cmd

## Load record instances
dbLoadRecords("$(TOP)/db/EPC3016.db","Sys=$(SYS), Dev=$(DEV), ASYNPORT=$(PORT)")
dbLoadRecords("$(TOP)/db/asynRecord.db","P=$(SYS),R=$(DEV)Asyn,PORT=$(PORT),ADDR=0,IMAX=256,OMAX=256")

# ## autosave/restore machinery
# save_restoreSet_Debug(0)
# save_restoreSet_IncompleteSetsOk(1)
# save_restoreSet_DatedBackupFiles(1)

# set_savefile_path("${TOP}/as","/save")
# set_requestfile_path("${TOP}/as","/req")

# set_pass0_restoreFile("info_positions.sav")
# set_pass0_restoreFile("info_settings.sav")
# set_pass1_restoreFile("info_settings.sav")

# dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db","P=$(IOC_PREFIX)")
# dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db","IOC=$(IOC_PREFIX)")
# save_restoreSet_status_prefix("$(IOC_PREFIX)")

iocInit()
