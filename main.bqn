# A simple TOTP implementation.
#
# $ echo "ZYTYYE5FOAGW5ML7LRWUL4WTZLNJAMZS" | bqn main.bqn
# 024999
#
# Please don't actually use this.

⟨TOTP⟩ ← •Import "./totp.bqn"
•Out TOTP •FChars "/dev/stdin"
