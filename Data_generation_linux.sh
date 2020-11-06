#-------Script to generate 1 TB data-------#
#!/bin/sh
for i in {1..10}
do
        dd if=/dev/urandom of=/data_1/file_`date +%s`."$i" bs=1M count=123000
done

#NOTE: Every iteration will generate a chunk of ~100 GB file. This script will generate 1 TB data. Please modify the "count" if less size chunk is to be created.
