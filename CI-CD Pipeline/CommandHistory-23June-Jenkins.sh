   1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  docker ps
    5  clear
    6  docker run -dit --name myos1 centos:7
    7  docker ps
    8  ls
    9  vi sudhanshu.txt
   10  cat sudhanshu.txt 
   11  history
   12  docker attach myos1
   13  docker ps
   14  docker stop myos1
   15  docker ps
   16  docker start myos1
   17  docker attach myos1
   18  ls
   19  docker cp sudhanshu.txt myos1:/
   20  docker attach myos1
   21  ls
   22  docker cp myos1:/a.txt .
   23  ls
   24  docker ps
   25  docker rm -f myos
   26  docker rm -f myos1
   27  ls
   28  mkdir gfg_volume
   29  ls
   30  docker run -dit --name os1 -v /gfg_volume/:/app/ centos:7
   31  cd gfg_volume/
   32  ls
   33  pwd
   34  docker ps
   35  docker attach os1
   36  ls
   37  pwd
   38  docker rm -f os1
   39  ls
   40  docker run -dit --name os2 -v /gfg_volume/:/app/ centos:7
   41  docker attach os2
   42  docker run -dit --name mywebos -p 80:80 -v /gfg_volume/:/usr/share/nginx/html/ nginx
   43  ls
   44  vi index.html
   45  vi index.html 
   46  history
   47  clear
   48  docker run -dit --name mywebos1 -p 81:80 -v /gfg_volume/:/usr/share/nginx/html/ nginx
   49  docker run --help
   50  ls
   51  clear
   52  cd /
   53  cd gfg_volume/
   54  ls
   55  vi index.html 
   56  docker run -dit --name mywebos1 -p 81:80 -v /gfg_volume/:/usr/share/nginx/html/ nginx
   57  docker run -dit --name mywebos2 -p 81:80 -v /gfg_volume/:/usr/share/nginx/html/ nginx
   58  clear
   59  pwd
   60  docker volume ls
   61  docker volume --help
   62  docker volume create --help
   63  docker volume create myvol1
   64  docker volume ls
   65  docker volume inspect myvol1
   66  clear
   67  cd /
   68  clear
   69  docker run -dit --name gfg1 -v myvol1:/app centos:7
   70  docker volume ls
   71  docker attach gfg1
   72  docker rm -f gfg1
   73  docker run -dit --name gfg2 -v myvol1:/app centos:7
   74  docker volume inspect myvol1
   75  cd /var/lib/docker/volumes/myvol1/_data
   76  ls
   77  pwd
   78  history
   79  cd /
   80  clear
   81  docker run -dit  --name jenkins -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
   82  docker ps
   83  docker volume ls
   84  docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
   85  docker volume inspect jenkins_home
   86  cd /var/lib/docker/volumes/jenkins_home/_data
   87  ls
   88  cd /
   89  clear
   90  ls
   91  docker ps
   92  clear
   93  wget https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.rpm
   94  yum install jdk-17.0.10_linux-x64_bin.rpm -y
   95  cd /
   96  java
   97  clear
   98  ls
   99  mkdir /slave
  100  curl -sO http://13.127.34.211:8080/jnlpJars/agent.jar
  101  ls
  102  java -jar agent.jar -url http://13.127.34.211:8080/ -secret 8effa5c1e016fc21312cfcec30b32fd8128d29e0cc1171e75cfea221db940bf9 -name ec2 -workDir "/slave" &
  103  cd slave/
  104  ls
  105  ps -aux | grep java
  106  ls
  107  cd workspace/
  108  ls
  109  cd mygfgpipeline
  110  ls
  111  pwd
  112  cd /
  113  clear
  114  ls
  115  mkdir test
  116  cd test
  117  touch gfg20.txt
  118  ls
  119  cd /
  120  pwd
  121  cp /test/gfg20.txt     .
  122  ls
  123  history
  124  clear
  125  sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  126  ls
  127   chmod +x /usr/local/bin/docker-compose
  128  docker-compose 
  129  docker-compose --version
  130  clear
  131  docker run -it  -e x=10 centos:7
  132  docker volume ls
  133  vi docker-compose.yml
  134  docker-compose --help
  135  clear
  136  ls
  137  docker-compose up -d
  138  docker-compose --help
  139  clear
  140  docker-compose ps
  141  docker ps
  142  clear
  143  history
  144  clear
  145  docker-compose ps
  146  history
