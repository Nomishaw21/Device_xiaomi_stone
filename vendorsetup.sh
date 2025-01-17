git clone https://github.com/nomishaw21/device_xiaomi_stone-kernel device/xiaomi/stone-kernel
git clone https://github.com/kamikaonashi/vendor_xiaomi_stone vendor/xiaomi/stone --depth=1

# Rename conflicting qti_kernel_headers in source
sed -i 's/"qti_kernel_headers"/"qti_kernel_headers_old"/g' vendor/flare/build/soong/Android.bp

# Extra
git clone https://github.com/Nomishaw21/vendor_dolby_moto vendor/dolby
git clone https://github.com/Nomishaw21/Vendor-micam vendor/MiuiCameraLeica
