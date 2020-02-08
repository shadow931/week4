read -p 'Enter the username to create:' USERNAME
read -p 'Enter the name of the the account holder:'REALNAME
PASSWORD=$(date +%s%N | sha256sum |head -c32)
useradd -c "${REALNAME}" -m ${USERNAME}
passwd -e ${USERNAME}
echo "USERNAME: ${USERNAME}" >&2
echo "Password: ${PASSWORD}" >&2
echo "host:" loclusers >&2
