#!/bin/bash
echo "[*] Welcome to basti564's automatic .app to .ipa packager"
for f in *.app; do
  echo "[*] Working on ${f:0:${#f}-4}.."
  mkdir Payload
  echo "[*] copying files.."
  cp -r "$f" Payload/
  echo "[*] packaging ${f:0:${#f}-4}.."
  zip -r "${f:0:${#f}-4}.ipa" Payload
  echo "[*] removing payload folder.."
  rm -f -r Payload
done
echo "[!] Done"
