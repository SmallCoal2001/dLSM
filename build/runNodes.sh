# /bin/bash
memorynodes=("192.168.1.53" "192.168.1.52" "192.168.1.44" "192.168.1.69" "192.168.1.88" "192.168.1.89" "192.168.1.51" "192.168.1.33")
output="output.txt"

for node in ${memorynodes[@]}; do
  sshpass -p 'zqy2023' ssh -f zqy2023@$node "cd /home/zqy2023/dLSM/build ; echo start > $output"
done

for memorynodenum in 1 2 3 4 5 6 7; do
  for threads in 1 2 4 8 16 32 64 128; do

    if [ $threads -eq 32 ]; then
      nums=5000000
      computenodes=("192.168.1.53")
      echo "192.168.1.53 192.1689.1.33" > ../connection.conf
    elif [ $threads -eq 64 ]; then
      nums=2500000
      computenodes=("192.168.1.51" "192.168.1.52 ""192.168.1.53")
      echo "192.168.1.51 192.168.1.52 192.168.1.53 192.168.1.33" > ../connection.conf
    elif [ $threads -eq 128 ]; then
      nums=1250000
      computenodes=("192.168.1.44" "192.168.1.51" "192.168.1.52" "192.168.1.53" "192.168.1.69" "192.168.1.88" "192.168.1.89")
      echo "192.168.1.44 192.168.1.51 192.168.1.52 192.168.1.53 192.168.1.69 192.168.1.88 192.168.1.89 192.168.1.33" > ../connection.conf
    else
      nums=10000000
      computenodes=()
      echo "192.168.1.33" > ../connection.conf
    fi

    for i in `seq 0 $memorynodenum`; do
      echo -n ${memorynodes[$i]} >> ../connection.conf
      echo -n ' ' >> ../connection.conf
    done

    for node in ${memorynodes[@]}; do
      sshpass -p 'zqy2023' scp ../connection.conf zqy2023@$node:/home/zqy2023/dLSM/
      sshpass -p 'zqy2023' ssh -f zqy2023@$node "killall Server ; db_bench"
    done

    for readpercent in 10 30 50 70 90; do
      for i in `seq 0 $memorynodenum`; do
        sshpass -p 'zqy2023' ssh -f zqy2023@${memorynodes[$i]} "cd /home/zqy2023/dLSM/build ; ./Server 19843 8 $i"
      done
      sleep 1
      cnt=0
      for compute in ${computenodes[@]}; do
        sshpass -p 'zqy2023' ssh -f zqy2023@$compute "cd /home/zqy2023/dLSM/build/ ; ./cli.sh $threads $cnt $output $readpercent $nums"
        ((cnt+=1))
      done
      ./cli.sh $threads $cnt $output $readpercent $nums
      sleep 1
      for node in ${memorynodes[@]}; do
            sshpass -p 'zqy2023' ssh -f zqy2023@$node "killall Server ; db_bench"
      done
    done
  done
done

#for readpercent in 10 30; do
#  sshpass -p 'zqy2023' ssh -f zqy2023@192.168.1.53 "killall Server"
#  sleep 2
#  sshpass -p 'zqy2023' ssh -f zqy2023@192.168.1.53 "cd /home/zqy2023/dLSM/build/ ; ./Server 19843 8 0"
#  sleep 2
#  cnt=0
#  for node in ${nodes[@]}
#  do
#    sshpass -p 'zqy2023' ssh -f zqy2023@$node "cd /home/zqy2023/dLSM/build ; ./cli.sh $key_size $cnt $output $readpercent $nums"
#    ((cnt+=1))
#  done
#  ./cli.sh $key_size $cnt $output $readpercent $nums
#  sleep 2
#  for node in ${nodes[@]}
#  do
#      sshpass -p 'zqy2023' ssh -f zqy2023@$node "killall db_bench"
#  done
#done
#
#sshpass -p 'zqy2023' ssh -f zqy2023@192.168.1.53 "killall Server"

