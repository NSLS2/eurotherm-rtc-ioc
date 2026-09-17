# AI
drvModbusAsynConfigure("$(PORT)_AI_PV", "$(PORT)", 0, 3, 289, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AI_PV_STATUS", "$(PORT)", 0, 3, 1932, 1, "UINT16", 100, "epc3016")

# IO1
drvModbusAsynConfigure("$(PORT)_IO1_PV_RB", "$(PORT)", 0, 3, 1952, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_IO1_STATUS", "$(PORT)", 0, 3, 1953, 1, "UINT16", 100, "epc3016")

# LOOP
drvModbusAsynConfigure("$(PORT)_LOOP_SP1", "$(PORT)", 0, 6, 24, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_SP1_RB", "$(PORT)", 0, 3, 24, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_CH1_PROP_BAND", "$(PORT)", 0, 6, 6, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_CH1_PROP_BAND_RB", "$(PORT)", 0, 3, 6, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_INTEGRAL_TIME", "$(PORT)", 0, 6, 8, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_INTEGRAL_TIME_RB", "$(PORT)", 0, 3, 8, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_DERIVATIVE_TIME", "$(PORT)", 0, 6, 9, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_LOOP_DERIVATIVE_TIME_RB", "$(PORT)", 0, 3, 9, 1, "UINT16", 100, "epc3016")

# Alarm 1
drvModbusAsynConfigure("$(PORT)_AL1_STATUS", "$(PORT)", 0, 3, 2113, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL1_ACK", "$(PORT)", 0, 6, 2126, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL1_TYPE", "$(PORT)", 0, 3, 536, 1, "UINT16", 100, "epc3016")

# Alarm 2
drvModbusAsynConfigure("$(PORT)_AL2_STATUS", "$(PORT)", 0, 3, 2137, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL2_ACK", "$(PORT)", 0, 6, 2150, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL2_TYPE", "$(PORT)", 0, 3, 537, 1, "UINT16", 100, "epc3016")

# Alarm 3
drvModbusAsynConfigure("$(PORT)_AL3_STATUS", "$(PORT)", 0, 3, 2161, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL3_ACK", "$(PORT)", 0, 6, 2174, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL3_TYPE", "$(PORT)", 0, 3, 538, 1, "UINT16", 100, "epc3016")

# Alarm 4
drvModbusAsynConfigure("$(PORT)_AL4_STATUS", "$(PORT)", 0, 3, 2185, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL4_ACK", "$(PORT)", 0, 6, 2198, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL4_TYPE", "$(PORT)", 0, 3, 539, 1, "UINT16", 100, "epc3016")

# Alarm 5
drvModbusAsynConfigure("$(PORT)_AL5_STATUS", "$(PORT)", 0, 3, 2209, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL5_ACK", "$(PORT)", 0, 6, 2222, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL5_TYPE", "$(PORT)", 0, 3, 2208, 1, "UINT16", 100, "epc3016")

# Alarm 6
drvModbusAsynConfigure("$(PORT)_AL6_STATUS", "$(PORT)", 0, 3, 2233, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL6_ACK", "$(PORT)", 0, 6, 2246, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_AL6_TYPE", "$(PORT)", 0, 3, 2232, 1, "UINT16", 100, "epc3016")


# Instrument
drvModbusAsynConfigure("$(PORT)_INSTRUMENT_MODE", "$(PORT)", 0, 6, 199, 1, "UINT16", 100, "epc3016")
drvModbusAsynConfigure("$(PORT)_INSTRUMENT_MODE_RB", "$(PORT)", 0, 3, 199, 1, "UINT16", 100, "epc3016")

# Access / password
drvModbusAsynConfigure("$(PORT)_ACCESS_PASSWORD", "$(PORT)", 0, 16, 21760, 9, "ZSTRING_HIGH_LOW", 100, "epc3016")


# End of EPC3016 modbus map