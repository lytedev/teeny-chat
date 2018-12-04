#!/usr/bin/env bash
# TODO: auth/register
log_file="./chat.log"
touch "$log_file"
m() { echo "[$(date +%H:%M:%S)] $*" >> "$log_file"; }
echo "You can start typing anytime. Text is entered in the bottom-left. "
echo -e "The send button is located in the bottom-right. You may also hit the enter key to send.\\n"
USER=""
while [ -z "$USER" ]; do
	echo "Please enter your username (not blank):"; read -r USER
done
echo ""
m "${USER} joined."
echo -e "Welcome to the chat ${USER}!\\n"
tail -n 0 -f "$log_file" --pid=$$ &
while read MSG; do
	if [ ! -z "$MSG" ] && [ ! "$MSG" = "\n" ]; then
		m "${USER}: ${MSG}";
	fi
done
