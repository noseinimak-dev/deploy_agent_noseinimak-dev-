#!/usr/bin/env bash
set -e

cleanup() {
    local sig="$1"
    echo -e "\n[!] Caught signal ($sig). Running emergency cleanup..."
    exit 1
}
trap 'cleanup SIGINT' SIGINT
trap 'cleanup SIGTSTP' SIGTSTP
