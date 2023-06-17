echo 'Starting to clone stuffs needed for your device'

# Vendor Hotword
echo 'Cloning Vendor Hotword [1/5]'
git clone https://github.com/BalayBera/vendor_hotword.git vendor/hotword

# Proton Clang
echo 'Cloning Proton Clang [2/5]'
git clone --depth=1 https://github.com/BalayBera/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton

# Hardware Xiaomi
echo 'Cloning Hardware Xiaomi [3/5]'
git clone https://github.com/BalayBera/hardware_xiaomi.git hardware/xiaomi

# RealmeDirac
echo 'Cloning RealmeDirac [4/5]'
git clone https://github.com/BalayBera/android_packages_apps_RealmeDirac.git packages/apps/RealmeDirac

# Brightness Patch
echo "Applying Brightness Patch [5/5]"
cd frameworks/base || exit 1
if git log -150 --oneline --decorate | grep "Fix brightness slider"; then
echo "Fix was already applied"
else
git fetch https://github.com/ArrowOS/android_frameworks_base/ ca3ffbc964826616fe3f088e4fbab3f6ca070c19 && git cherry-pick FETCH_HEAD
fi
cd ../..

echo 'Completed, Now proceeding to lunch'
