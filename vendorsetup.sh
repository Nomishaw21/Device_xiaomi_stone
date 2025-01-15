git clone https://github.com/nomishaw21/device_xiaomi_stone-kernel device/xiaomi/stone-kernel
git clone https://github.com/kamikaonashi/vendor_xiaomi_stone vendor/xiaomi/stone --depth=1

# Rename conflicting qti_kernel_headers in source
sed -i 's/"qti_kernel_headers"/"qti_kernel_headers_old"/g' vendor/flare/build/soong/Android.bp

