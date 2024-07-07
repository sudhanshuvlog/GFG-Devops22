 cd /
    2  systemd-cgtop
    3  systemd-cgtop
    4  vi app.py
    5  python3 app.py
    6  yum install python3-pip
    7  pip3 install flask
    8  systemd-cgtop
    9  systemctl stop stressgfg
   10  systemd-cgtop
   11  systemd-cgtop
   12  clear
   13  ls
   14  vi app.py 
   15  python app.py
   16  python3 app.py
   17  cd /etc/systemd/system
   18  vi pythongfg.service
   19  cd /
   20  systemctl start pythongfg
   21  systemctl status pythongfg
   22  systemctl enable pythongfg
   23  systemctl enable httpd
   24  clear
   25  cd /etc/systemd/system
   26  ls
   27  cp stressgfg.service stressgfg1.service 
   28  systemctl daemon-reload
   29  systemctl start stressgfg1
   30  systemctl start stressgfg
   31  cd user-1000.slice.d/
   32  ls
   33  vi gfg.conf 
   34  systemctl daemon-reload
   35  systemctl restart user-1000.slice
   36  dd if=/dev/zero of=/dev/null
   37  systemctl stop stressgfg1
   38  systemctl stop stressgfg
   39  vi gfg.conf 
   40  systemctl daemon reload
   41  systemctl daemon-reload
   42  clear
   43  cd /
   44  docker run --help
   45  clear
   46  ls
   47  fdisk -l
   48  pvcreate /dev/xvdi
   49  yum install lvm
   50  yum whatprovides pvcreate
   51  yum install lvm2-2.03.16-1.amzn2023.0.4.x86_64
   52  fdisk -l
   53  pvcreate /dev/xvdi
   54  pvcreate /dev/xvdh
   55  pvdisplay
   56  vgcreate gfgvg /dev/sdi /dev/sdh
   57  vgdisplay
   58  lvcreate --size 2.5G --name mygfglv gfgvg
   59  lvdisplay
   60  vgdisplay
   61  mkfs.ext4 /dev/gfgvg/mygfglv
   62  cd backup/
   63  ls
   64  cd ..
   65  mount /dev/gfgvg/mygfglv /backup/
   66  ls
   67  df -hT
   68  cd backup/
   69  ls
   70  touch a.txt
   71   touch b.txt
   72  ls
   73  cd ..
   74  lvdisplay
   75  lvextend --size +200M /dev/gfgvg/mygfglv
   76  lvdisplay
   77  df -hT
   78  resize2fs /dev/gfgvg/mygfglv
   79  df -hT
   80  cd backup/
   81  ls
   82  python3
   83  history
   [root@ip-172-31-47-114 /]# umount backup/
[root@ip-172-31-47-114 /]# history
    1  clear
    2  ps -aux
    3  top
    4  cd /
    5  systemd-cgtop
    6  cd /etc/systemd/system
    7  ls
    8  vi stressgfg.service
    9  systemctl status httpd
   10  vi /usr/lib/systemd/system/httpd.service
   11  vi stressgfg.service
   12  systemctl daemon-reload
   13  systemctl start stressgfg.service
   14  cd /etc/systemd/system
   15  ls
   16  mkdir user-1000.slice.d
   17  cd user-1000.slice.d/
   18  ls
   19  vi gfg.conf
   20  systemctl daemon-reload
   21  systemctl restart user-1000.slice
   22  ps 
   23  ps -o pid, comm
   24  ps -o pid,comm
   25  ps -o pid,comm,cls
   26  vi gfg.conf 
   27  top
   28  clear
   29  cd /
   30  date
   31  systemd-run --on-active=90 tocuh abcd.txt
   32  systemd-run --on-active=90 touch abcd.txt
   33  ls
   34  vi run-r47eea98a22d24d8f811624c179a823a6.service
   35  systemctl status run-r47eea98a22d24d8f811624c179a823a6.service
   36  ls
   37  systemctl status run-r47eea98a22d24d8f811624c179a823a6.service
   38  ls
   39  systemctl status run-r47eea98a22d24d8f811624c179a823a6.timer
   40  ls
   41  systemd-run --on-active=5 touch /abcd.txt
   42  ls
   43  systemctl staus run-re0431ebee4d44c84a9de2eb0af7905b0.timer
   44  systemctl status httpd
   45  systemctl start httpd
   46  journalctl -u httpd
   47  q
   48  journalctl -u pythongfg
   49  vi /etc/systemd/system/httpd.service.d/sudhanshu.conf
   50  journalctl -u httpd
   51  q
   52  systemctl show httpd
   53  clear
   54  yum install docker -y
   55  systemctl start dcocker
   56  systemctl start docker
   57  docker run -it
   58  clear
   59  docker run -it --name os1 centos:7
   60  docker run -it --name os1 --memory=10mb --cpu-quota=10 centos:7
   61  docker run -it --name os1 --memory=10mb --cpu-quota=10000 centos:7
   62  docker run -it --name os2 --memory=10mb --cpu-quota=10000 centos:7
   63  docker stat os2
   64  docker stats os2
   65  clear
   66  fdisk -l
   67  fdisk -l
   68  fdisk /dev/xvdg
   69  fdisk -l
   70  fdisk /dev/xvdg
   71  fdisk -l
   72  mkfs -t ext4 /dev/xvdg1
   73  mkdir backup
   74  ls
   75  df -hT
   76  mount /dev/xvdg1 /backup/
   77  df -hT
   78  cd backup/
   79  touch a.txt 
   80  touch b.txt
   81  ls
   82  cd ..
   83  umount backup/
   84  history
