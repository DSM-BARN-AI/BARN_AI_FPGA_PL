# 2026-07-14T09:00:13.324552200
import vitis

client = vitis.create_client()
client.set_workspace(path="BARN_AI_FPGA_PL")

vitis.dispose()

