#/usr/bin/bash

#user=$1

users=$(cat db.csv)

for j in $users
do
 if id $j &> /dev/null
 then
         echo " $j is already present"
 else
        useradd $j &> /dev/null
        if [ 0 -eq $? ]
        then
                echo "user $j is been created succesfully"
        else
                echo "user creation failed, server error"
fi
 fi
done




# python3 a.py


#yum install httpd -y

#mkdir /gfg123

#yum install docker -y