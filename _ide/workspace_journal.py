# 2026-07-14T11:11:50.479743200
import vitis

client = vitis.create_client()
client.set_workspace(path="BARN_AI_FPGA_PL")

vitis.dispose()

