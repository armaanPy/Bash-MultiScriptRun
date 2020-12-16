#!/bin/bash

# Backfill financial trading charts filtered by different asset classes. Partition 1/3.

DATE=$(date)
INST=01
PAR_NUM=1


echo "Starting backfill for asset type "EI.FUTURE" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at EI.FUTURE -c Production -ot Backup -nps 16 -p $(PAR_NUM)/3

sleep 5

echo "Starting backfill for asset type "EI.SPOT" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at EI.SPOT -c Production -ot Backup -nps 16 -p $(PAR_NUM)/3

sleep 5

echo "Starting backfill for asset type "FX.SPOT" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at FX.SPOT -c Production -ot Backup -nps 16 -p $(PAR_NUM)/3

sleep 5

echo "Starting backfill for asset type "STOCK" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at STOCK --c Production -ot Backup -nps 16 -p $(PAR_NUM)/3

sleep 5

echo "Starting backfill for asset type "TC.FUTURE" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at TC.FUTURE -c Production -ot Backup -nps 16 -p $(PAR_NUM)/3
sleep 5

echo "Starting backfill for asset type "TC.SPOT" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at TC.SPOT -c Production -ot Backup -nps 16 -p $(PAR_NUM)/3

sleep 5

echo "Starting backfill for asset type "BT.SPOT" ${DATE}" >> /tmp/BackfillLog.txt
cd /opt/apps/algorithmictrading(INST)/bin
./ChartsDBFill.sh -at BT.SPOT -c Production -ot Backup -nps 16 -p $(PAR_NUM)/3