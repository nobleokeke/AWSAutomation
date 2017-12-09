if [ $# -lt 5 ]
then
 echo " Not enough values"
 echo "usage: [ $0 dbplatform oracle_sid master password backup_retention ]"
 exit
elif [ $# -gt 5 ]
then
 echo "Too many values"
 echo "usage: [ $0 dbplatform oracle_sid master password backup_retention ]"
 exit
elif [ $# -eq 5 ]
then
aws rds create-db-instance  --engine $1  --db-instance-identifier $2  --allocated-storage 20  --db-instance-class db.m1.small  --master-username $3  --master-user-password $4  --backup-retention-period $5
fi

#v2
