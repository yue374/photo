#!/bin/bash
# Revanced Extended build
source src/build/utils.sh

# Download requirements
dl_gh "revanced-patches revanced-cli" "inotia00" "prerelease"

# Patch YouTube:
get_patches_key "youtube-revanced-extended"
get_apk "com.google.android.youtube" "youtube-beta" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
split_editor "youtube-beta" "youtube-beta"
patch "youtube-beta" "revanced-extended" "inotia"
# Patch Youtube Arm64-v8a
get_patches_key "youtube-revanced-extended"
split_editor "youtube-beta" "youtube-beta-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
patch "youtube-beta-arm64-v8a" "revanced-extended" "inotia"
# Patch Youtube Armeabi-v7a
get_patches_key "youtube-revanced-extended"
split_editor "youtube-beta" "youtube-beta-armeabi-v7a" "exclude" "split_config.arm64_v8a split_config.x86 split_config.x86_64"
patch "youtube-beta-armeabi-v7a" "revanced-extended" "inotia"
# Patch Youtube x86
get_patches_key "youtube-revanced-extended"
split_editor "youtube-beta" "youtube-beta-x86" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86_64"
patch "youtube-beta-x86" "revanced-extended" "inotia"
# Patch Youtube x86_64
get_patches_key "youtube-revanced-extended"
split_editor "youtube-beta" "youtube-beta-x86_64" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86"
patch "youtube-beta-x86_64" "revanced-extended" "inotia"
# Patch YouTube:
#get_patches_key "youtube-revanced-extended"
#get_apk "com.google.android.youtube" "youtube-beta" "youtube" "google-inc/youtube/youtube"
#patch "youtube-beta" "revanced-extended" "inotia"
# Split architecture Youtube:
#get_patches_key "youtube-revanced-extended"
#for i in {0..3}; do
#  split_arch "youtube-beta" "revanced-extended" "$(gen_rip_libs ${libs[i]})"
#done

# Patch YouTube Music Extended:
# Arm64-v8a
get_patches_key "youtube-music-revanced-extended"
get_apk "com.google.android.apps.youtube.music" "youtube-beta-music-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
patch "youtube-beta-music-arm64-v8a" "revanced-extended" "inotia"
# Armeabi-v7a
get_patches_key "youtube-music-revanced-extended"
version="8.02.52"
get_apk "com.google.android.apps.youtube.music" "youtube-beta-music-armeabi-v7a" "youtube-music" "google-inc/youtube-music/youtube-music" "armeabi-v7a"
patch "youtube-beta-music-armeabi-v7a" "revanced-extended" "inotia"
# x86_64
get_patches_key "youtube-music-revanced-extended"
get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-x86_64" "youtube-music" "google-inc/youtube-music/youtube-music" "x86_64"
patch "youtube-music-beta-x86_64" "revanced-extended" "inotia"
# x86
get_patches_key "youtube-music-revanced-extended"
get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-x86" "youtube-music" "google-inc/youtube-music/youtube-music" "x86"
patch "youtube-music-beta-x86" "revanced-extended" "inotia"

# Patch Reddit:
get_patches_key "reddit-rve"
get_apk "com.reddit.frontpage" "reddit-beta" "reddit" "redditinc/reddit/reddit" "Bundle_extract"
split_editor "reddit-beta" "reddit"
patch "reddit-beta" "revanced-extended" "inotia"
# Patch Arm64-v8a:
split_editor "reddit-beta" "reddit-arm64-v8a-beta" "exclude" "split_config.armeabi_v7a split_config.x86_64 split_config.mdpi split_config.ldpi split_config.hdpi split_config.xhdpi split_config.xxhdpi split_config.tvdpi"
get_patches_key "reddit-rve"
patch "reddit-arm64-v8a-beta" "revanced-extended" "inotia"

# Patch YouTube Lite Arm64-v8a:
get_patches_key "youtube-revanced-extended"
split_editor "youtube-beta" "youtube-lite-beta-arm64-v8a" "include" "split_config.arm64_v8a split_config.en split_config.xhdpi split_config.xxxhdpi"
patch "youtube-lite-beta-arm64-v8a" "revanced-extended" "inotia"
# Patch YouTube Lite Armeabi-v7a:
get_patches_key "youtube-revanced-extended"
split_editor "youtube-beta" "youtube-lite-beta-armeabi-v7a" "include" "split_config.armeabi_v7a split_config.en split_config.xhdpi split_config.xxxhdpi"
patch "youtube-lite-beta-armeabi-v7a" "revanced-extended" "inotia"
