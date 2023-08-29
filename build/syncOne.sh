make Server db_bench dLSM

nodes=("192.168.1.52" "192.168.1.53" )
nous=("192.168.1.51" "192.168.1.69" "192.168.1.88" "192.168.1.89" "192.168.1.44")
for node in ${nodes[@]}
do
  sshpass -p 'zqy2023' scp Server zqy2023@$node:/home/zqy2023/dLSM/build/
  sshpass -p 'zqy2023' scp db_bench zqy2023@$node:/home/zqy2023/dLSM/build/
  sshpass -p 'zqy2023' scp cli.sh zqy2023@$node:/home/zqy2023/dLSM/build/
  sshpass -p 'zqy2023' scp ../connection.conf zqy2023@$node:/home/zqy2023/dLSM/
done
