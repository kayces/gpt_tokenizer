#!/bin/bash

CURR_VERSION=gpt_tokenizer-v`awk '/^version: /{print $2}' packages/gpt_tokenizer/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_gpt_tokenizer/ios/flutter_gpt_tokenizer.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_gpt_tokenizer/macos/flutter_gpt_tokenizer.podspec
rm packages/flutter_gpt_tokenizer/macos/*.bak packages/flutter_gpt_tokenizer/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_gpt_tokenizer/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_gpt_tokenizer/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_gpt_tokenizer/