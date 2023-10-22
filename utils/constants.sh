#!/bin/bash

declare -A REGEX_DICT

# Store the awk logic for extracting key=value format from YAML in the dictionary
REGEX_DICT[": "]="awk -F': ' '{if (NF==2) print \$1 \"=\" \$2}'"

# Styles Constants
DEFAULT="\033[0m"
RED="\033[1;31m"
PINK="\033[38;5;213m"
BLUE="\033[1;34m"
CYAN="\033[1;36m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
WHITE="\033[1;37m"
MAGENTA="\033[1;35m"
GRAY="\033[1;30m"
PURPLE="\033[1;35m"

# config banner
USER_NAME=$(whoami)
HOST_NAME=$(hostname)
OS_NAME=$(lsb_release -ds)
TIMEZONE=$(timedatectl show --property=Timezone --value)
FOLLOW_ME="${CYAN}https://thejb.onrender.com"

BANNER="\n
${MAGENTA}=== ${RED}Linux Infrastructure Toolbox ${MAGENTA}=== \n
${MAGENTA}USER: ${DEFAULT}$USER_NAME \n
${MAGENTA}MACHINE: ${DEFAULT}$HOST_NAME \n
${MAGENTA}OS: ${DEFAULT}$OS_NAME \n
${MAGENTA}TIME ZONE: ${DEFAULT}$TIMEZONE \n
${MAGENTA}ABOUT ME: ${DEFAULT}$FOLLOW_ME \n
${MAGENTA}==================================== 
\n"

# Other Constants
EXIT_CHOICE=99