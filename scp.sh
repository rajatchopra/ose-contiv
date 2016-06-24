for i in `echo "$1 $2 $3 $4"`; do scp -i ~/.ssh/libra.pem $5 centos@${i}:/tmp/id; ssh -i ~/.ssh/libra.pem centos@${i} 'cat /tmp/id >> ~/.ssh/authorized_keys'; done
