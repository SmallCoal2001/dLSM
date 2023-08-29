killall db_bench
./db_bench \
        --benchmarks=fillrandomshard,readrandomshard\
        --threads=$1 \
        --key_size=16 \
        --value_size=32 \
        --num=$5 \
        --bloom_bits=10 \
        --readwritepercent=$4 \
        --compute_node_id=$2