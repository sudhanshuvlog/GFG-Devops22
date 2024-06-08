 356  cd GFG
  357  mkdir devops22-class
  358  cd devops22-class/
  359  ls
  360  mkdir git-prac
  361  cd git-prac/
  362  pwd
  363  ls
  364  git init
  365  ls
  366  ls -a
  367  touch a.txt
  368  ls
  369  cat a.txt
  370  vi a.txt
  371  cat a.txt
  372  git status
  373  git add a.txt
  374  git status
  375  git commit -m "added new file a.txt with some data"
  376  git log
  377  vi a.txt
  378  git log
  379  git add .
  380  git commit -m "second line changes"
  381  git log
  382  git reset --hard 1633
  383  git log
  384  git reset --hard 43d9ee
  385  git log
  386  vi a.txt
  387  ls -a
  388  git reflog
  389  ls
  390  git show
  391  clear
  392  ls
  393  git status
  394  vi b.txt
  395  ls
  396  git status
  397  git add b.txt
  398  git status
  399  git commit -m "b.txt file added"
  400  git log
  401  ls
  402  git reset --hard HEAD~2
  403  ls
  404  git log
  405  cat a.txt
  406  git branch
  407  ls
  408  cat a.txt
  409  git branch reel
  410  git branch
  411  git switch reel
  412  ls
  413  cat a.txt
  414  vi a.txt
  415  cat a.txt
  416  git switch master
  417  git switch reel
  418  git status
  419  git add .
  420  git commit -m "added the first api for reel feature"
  421  git log
  422  git switch master
  423  git log
  424  ls
  425  cat a.txt
  426  git branch notification
  427  git switch notification
  428  git log
  429  vi notification.txt
  430  git add .
  431  git commit -m "first changes completed for notification"
  432  git log
  433  git switch reel
  434  ls
  435  vi reel.txt
  436  git add .
  437  git commit -m "reel.txt created, all api's working"
  438  git log
  439  git switch master
  440  git merge reel
  441  ls
  442  cat a.txt
  443  git log
  444  git remote -v
  445  cd ..
  446  ls
  447  cd git-prac/
  448  ls
  449  git log
  450  clear
  451  git config -l
  452  git config user.email "sudhanshutest123@gmail.com"
  453  git config user.name "Trainersudhanshu"
  454  git config -l
  455  clear
  456  git remote -v
  457  git remote add origin git@github.com:Trainersudhanshu/Devops20First.git
  458  git remote -v
  459  git push -u origin main
  460  git branc
  461  git push
  462  git push --set-upstream origin master
  463  git branch feature-reel
  464  git switch feature-reel
  465  ls
  466  vi reel123.txt
  467  git add .
  468  git commit -m "reel branch feature"
  469  git push --set-upstream origin feature-reel
  470  git switch master
  471  clear
  472  git log
  473  ls
  474  git fetch
  475  git status
  476  ls
  477  git merge
  478  ls
  479  git log
  480  cd ../..
  481  cd GFG
  482  ls
  483  cd devops22-class/
  484  ls
  485  cd git-prac/
  486  clear
  487  ls
  488  git log
  489  cd ..
  490  mkdir git-prac1
  491  cd git-prac1/
  492  clear
  493  vi a.txt
  494  ls
  495  git init
  496  git status
  497  git add a.txt
  498  git status
  499  git commit -m "first file"
  500  git log
  501  git branch feature-dev
  502  git branch
  503  git switch feature-dev
  504  git log
  505  ls
  506  git status
  507  git status
  508  git log
  509  ls
  510  ls
  511  git merge dev
  512  git merge feature-dev
  513  git log
  514  git log
  515  ls
  516  git branch
  517  ls
  518  vi settings.py
  519  git add .
  520  git commit -m "setting.py file added"
  521  git log
  522  git switch master
  523  ls
  524  git log
  525  vi main.py
  526  git add .
  527  git commit -m "main.py file added"
  528  git log
  529  git switch dev2
  530  ls
  531  git log
  532  git merge master
  533  git log
  534  ls
  535  git merge -h
  536  git switch master
  537  ls
  538  git branch dev3
  539  git branch dev4
  540  git checkout dev3
  541  touch e.txt
  542  git add .
  543  git commit -m "made by dev3"
  544  git checkout dev4
  545  touch f.txt
  546  git add .
  547  git commit -m "made by dev4"
  548  git switch master
  549  ls
  550  git log
  551  git merge -s octopus dev3 dev4
  552  ls
  553  git log
  554  git branch dev5
  555  git switch dev5
  556  touch k.txt
  557  git add . ; git commit -m "first by dev5"
  558  git log
  559  git log --oneline
  560  ls
  561  touch l.txt
  562  vi k.txt
  563  git add . ; git commit -m "second by dev5"
  564  vi k.txt
  565  git add . ; git commit -m "third by dev5"
  566  vi k.txt
  567  git add . ; git commit -m "fourth by dev5"
  568  git log --oneline
  569  git switch master
  570  git branch dev6
  571  git merge dev5
  572  ls
  573  git log
  574  git switch dev6
  575  git log
  576  clear
  577  git merge --squash dev5
  578  git commit -m "squash the commit from dev5"
  579  git log --oneline
  580  ls
  581  cd ..
  582  ls
  583  cd git-prac1
  584  ls
  585  git log --oneline
  586  ls -a
  587  rm .git/
  588  rm -r .git/
  589  rm -rf .git/
  590  ls -a
  591  git status
  592  rm a.txt b.py e.txt f.txt *.py
  593  ls
  594  rm k.txt l.txt
  595  ls
  596  clear
  597  git init
  598  git config -l
  599  git config user.name "Trainersudhanshu"
  600  git config user.email "sudhanshutest123@gmail.com"
  601  touch a.txt
  602  git add .
  603  git commit -m "first by master"
  604  git branch dev1
  605  git switch dev1
  606  touch b.txt
  607  git add . ; git commit -m "first by dev1"
  608  git switch master
  609  touch c.txt
  610  git add . ; git commit -m "second by master"
  611  git switch dev1
  612  touch d.txt
  613  git add . ; git commit -m "second by dev1"
  614  git switch master
  615  touch e.txt
  616  git add . ; git commit -m "third by master"
  617  git switch dev1
  618  touch f.txt
  619  git add . ; git commit -m "third by dev1"
  620  git switch master
  621  git merge dev1
  622  git log
  623  cd ..
  624  ls
  625  mkdir git-prac2
  626  cd git-prac2
  627  git init
  628* touch a.tx
  629  git add . ; git commit -m "first by master"
  630  git checkout dev1
  631  git checkout -b dev1
  632  touch b.txt
  633  git add . ; git commit -m "first by dev1"
  634  git switch master
  635  touch c.txt
  636  git add . ; git commit -m "second by master"
  637  git switch dev1
  638  touch d.txt
  639  git add . ; git commit -m "second by dev1"
  640  git switch master
  641  touch e.txt
  642  git add . ; git commit -m "third by master"
  643  git switch dev1
  644  touch f.txt
  645  git add . ; git commit -m "third by dev1"
  646  git switch master
  647  git log
  648  git rebase dev1
  649  ls
  650  git log
  651  cd ..
  652  ls
  653  mkdir git-prac3
  654  cd git-prac3
  655  git init
  656  clear
  657  ls
  658  git status
  659  vi a.txt
  660  git add . ; git commit -m "first commit"
  661  git log
  662  vi a.txt
  663  git add . ; git commit -m "second commit"
  664  vi a.txt
  665  git add . ; git commit -m "third commit"
  666  cat a.txt
  667  git log
  668  git reset --soft HEAD~1
  669  git log
  670  cat a.txt
  671  git status
  672  git add . ; git commit -m "this is third commit"
  673  git log
  674  git status
  675  git reset HEAD~1
  676  cat a.txt
  677  git log
  678  git status
  679  touch b.txt
  680  git add .
  681  git commit -m "added b.txt also this time"
  682  git log
  683  ls
  684  cat a.txt
  685  git reset --hard HEAD~1
  686  cat a.txt
  687  git status
  688  git log
  689  git reflog
  690  ls
  691  git reset --hard commit 1e385a2ddf8da582f38159100037b96e81cee51b (HEAD -> master)
  692  Author: =sudhanshuvlog1 <pandeysudhanshuup@gmail.com>
  693  Date:   Sat Jun 8 13:04:47 2024 +0530
  694  git reset --hard 1e385a2ddf8d
  695  ls
  696  git log
  697  clear
  698  git log
  699  ls
  700  cat a.txt
  701  git revert  1e385a2d
  702  git log
  703  ls
  704  cat a.txt
  705  clear
  706  ls
  707  rm -rf .git/
  708  ls
  709  rm a.txt
  710  git init
  711  clear
  712  vi a.txt
  713  git add . ; git commit -m "first commit"
  714  git branch dev
  715  git switch dev
  716  ls
  717  vi a.txt
  718  git status
  719  git switch master
  720  ls
  721  cat a.txt
  722  git switch dev
  723  cat a.txt
  724  git stash list
  725  git save stash "WIP: adding the algo a.txt"
  726  git stash save "WIP: adding the algo a.txt"
  727  git stash list
  728  cat a.txt
  729  git switch master
  730  cat a.txt
  731  vi b.txt
  732  git switch dev
  733  cat a.txt
  734  git stash list
  735  git stash pop
  736  ls
  737  git stash list
  738  cat a.txt
  739  ls
  740  git stash save "WIP: adding the algo a.txt"
  741  git switch master
  742  ls
  743  git status
  744  git add b.txt
  745  git commit -m "b.txt file"
  746  git switch dev
  747  ls
  748  git stash pop
  749  cat a.txt
  750  git add .
  751  git commit -m "first by dev"
  752  vi b.txt
  753  cat b.txt
  754  git merge master
  755  git stash list
  756  git stash save "WIP: b.txt"
  757  git statys
  758  git status
  759  git stash list
  760  git add .
  761  git stash save "WIP: b.txt"
  762  git stash list
  763  ls
  764  git merge master
  765  ls
  766  cat b.txt
  767  git stash list
  768  git stash show
  769  git stash pop
  770  cat b.txt
  771  ls
  772  vi b.txt
  773  git status
  774  git add .
  775  git commit -m "sdfsf"
  776  cat b.txt
  777  git switch master
  778  ls
  779  cat b.txt
  780  clear
  781  ls
  782  vi c.txt
  783  git add . ; git commit -m "c.txt by master"
  784  git checkout -b dev
  785  git checkout -b dev1
  786  cat a.txt
  787  git log
  788  vi a.txt
  789  vi c.txt
  790  git add . ; git commit -m "c.txt updated by dev1"
  791  git switch master
  792  vi a.txt
  793  vi c.txt
  794  git switch dev1
  795  git add .
  796  git commit -m "more changes in c.txt"
  797  git switch dev1
  798  clear
  799  cat c.txt
  800  git merge master
  801  vim c.txt
  802  git mergetool
  803  cat c.txt
  804  git status
  805  git add .
  806  git commit -m "merged master into dev"
  807  git log
  808   history
