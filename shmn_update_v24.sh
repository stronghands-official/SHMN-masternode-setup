systemctl stop shmn.service
clear

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd /usr/local/bin/
sudo apt-get install unzip
echo "Script may appear frozen for a few seconds. This is normal."
wget -c https://github.com/sub307/XBI-bootstrap/releases/download/417018/bootstrap417018.rar
sudo unrar x bootstrap417018.rar fix/
cd fix
sudo rm -R ~/.shmn/backups/
sudo rm -R ~/.shmn/blocks/
sudo rm -R ~/.shmn/chainstate/
sudo rm -R ~/.shmn/database/
sudo rm -R ~/.shmn/sporks/
sudo rm -R ~/.shmn/zerocoin/
sudo rm ~/.shmn/budget.dat ~/.shmn/db.log ~/.shmn/debug.log ~/.shmn/fee_estimates.dat ~/.shmn/mncache.dat ~/.shmn/mnpayments.dat ~/.shmn/peers.dat ~/.shmn/xbid.dat ~/.shmn/.lock
sudo rm ../bootstrap417018.rar
sudo mv chainstate blocks peers.dat ~/.XBI
cd /usr/local/bin/
systemctl start shmn.service
cd ~
echo "Masternode restarted. Any errors about files not existing is ok."
echo
echo "Please wait at least 1 min before checking any commands as it may be reindexing and reconfiguring"
