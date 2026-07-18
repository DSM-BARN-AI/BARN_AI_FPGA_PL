# 2026-07-14T09:00:44.956199100
import vitis

client = vitis.create_client()
client.set_workspace(path="BARN_AI_FPGA_PL")

platform = client.create_platform_component(name = "vdma_plat",hw_design = "$COMPONENT_LOCATION/../BARN_AI/image_block_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="vdma_plat")
status = platform.build()

vitis.dispose()

