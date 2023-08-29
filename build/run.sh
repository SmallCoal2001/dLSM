# /bin/bash
for keysize in 8; do
  for valuesize in 32; do
    for threads in 1 2 4 8 16; do
      for readpercent in 10 30 50 70 90; do
        sshpass -p 'zqy2023' ssh -f zqy2023@$1 "killall Server"
#        sshpass -p 'zqy2023' ssh -f zqy2023@$1 "killall db_bench"
        sleep 2
        sshpass -p 'zqy2023' ssh -f zqy2023@$1 "cd /home/zqy2023/dLSM/build/ ; ./Server 19843 32 0"
        sleep 2
#        sshpass -p 'zqy2023' ssh -f zqy2023@$1 "cd /home/zqy2023/dLSM/build/ ;
#        ./db_bench \
#        --benchmarks=fillrandom,readrandom,readrandomwriterandom,stats \
#        --threads=$threads \
#        --key_size=$keysize \
#        --value_size=$valuesize \
#        --num=$2 \
#        --bloom_bits=10 \
#        --readwritepercent=$readpercent \
#        --compute_node_id=1 \
#        --fixed_compute_shards_num=0 >> $3"
        ./db_bench \
        --benchmarks=fillrandom,readrandom,readrandomwriterandom,stats \
        --threads=$threads \
        --key_size=$keysize \
        --value_size=$valuesize \
        --num=$2 \
        --bloom_bits=10 \
        --readwritepercent=$readpercent \
        --compute_node_id=0 \
        --fixed_compute_shards_num=0 >> $3
        sshpass -p 'zqy2023' ssh -f zqy2023@$1 "killall Server"
#        sshpass -p 'zqy2023' ssh -f zqy2023@$1 "killall db_bench"
      done
    done
  done
done