#!/bin/bash
echo "shellprocess-ran: $(date)" > /var/log/cipher-shellprocess.log
getent passwd 1000 >> /var/log/cipher-shellprocess.log
usermod --shell /bin/zsh "$(getent passwd 1000 | cut -d: -f1)" >> /var/log/cipher-shellprocess.log 2>&1
echo "exit-code: $?" >> /var/log/cipher-shellprocess.log
