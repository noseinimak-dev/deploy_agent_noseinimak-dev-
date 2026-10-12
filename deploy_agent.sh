#!/usr/bin/env bash
set -e

cleanup() {
    local sig="$1"
    echo -e "\n[!] Caught signal ($sig). Running emergency cleanup..."
    exit 1
}
trap 'cleanup SIGINT' SIGINT
trap 'cleanup SIGTSTP' SIGTSTP

deploy_environment() {
    read -p "Enter environment suffix: " suffix
    ACTIVE_DIR="attendance_tracker_${suffix}"
    mkdir -p "$ACTIVE_DIR/Helpers" "$ACTIVE_DIR/reports"
}

setup_roster() {
    cp templates/assets.csv "$ACTIVE_DIR/Helpers/assets.csv"
}
