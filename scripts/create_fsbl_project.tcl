hsi open_hw_design build/system_top.xsa
set cpu_name [lindex [hsi get_cells -filter {IP_TYPE==PROCESSOR}] 0]
platform create -name hw0 -hw build/system_top.xsa -os standalone -out ./build/sdk -proc $cpu_name
platform generate
