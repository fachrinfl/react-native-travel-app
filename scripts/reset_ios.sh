cd ios
pod cache clean --all
rm -rf build
rm -rf Pods
rm -rf Podfile.lock
pod deintegrate
pod install --repo-update
cd ..
