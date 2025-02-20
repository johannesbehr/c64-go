deps_config := \
	/home/wm/esp/esp-idf/components/app_trace/Kconfig \
	/home/wm/esp/esp-idf/components/aws_iot/Kconfig \
	/home/wm/esp/esp-idf/components/bt/Kconfig \
	/home/wm/esp/esp-idf/components/driver/Kconfig \
	/home/wm/esp/esp-idf/components/esp32/Kconfig \
	/home/wm/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/wm/esp/esp-idf/components/esp_event/Kconfig \
	/home/wm/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/wm/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/wm/esp/esp-idf/components/ethernet/Kconfig \
	/home/wm/esp/esp-idf/components/fatfs/Kconfig \
	/home/wm/esp/esp-idf/components/freemodbus/Kconfig \
	/home/wm/esp/esp-idf/components/freertos/Kconfig \
	/home/wm/esp/esp-idf/components/heap/Kconfig \
	/home/wm/esp/esp-idf/components/libsodium/Kconfig \
	/home/wm/esp/esp-idf/components/log/Kconfig \
	/home/wm/esp/esp-idf/components/lwip/Kconfig \
	/home/wm/esp/esp-idf/components/mbedtls/Kconfig \
	/home/wm/esp/esp-idf/components/mdns/Kconfig \
	/home/wm/esp/esp-idf/components/mqtt/Kconfig \
	/home/wm/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/wm/esp/esp-idf/components/openssl/Kconfig \
	/home/wm/esp/esp-idf/components/pthread/Kconfig \
	/home/wm/esp/esp-idf/components/spi_flash/Kconfig \
	/home/wm/esp/esp-idf/components/spiffs/Kconfig \
	/home/wm/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/wm/esp/esp-idf/components/vfs/Kconfig \
	/home/wm/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/wm/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/wm/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/wm/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/wm/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
