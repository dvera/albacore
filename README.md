# albacore
Dockerfile for the Albacore basecaller from Oxford Nanopore

## usage
cd into the directory containing the directory of reads

```bash
docker run -v $(pwd):/root vera/albacore \
 -i relative/path/to/reads \
 -c /opt/albacore/FLO-MIN106_LSK208_2d.cfg \
 -s output \
 -t $(nproc)
```

### Available flowcell + kit combinations are:
|flowcell    |kit       | barcoding  | config file             |
|------------|----------|------------|-------------------------|
|FLO-MIN106  |SQK-LSK108|            | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-LSK208|            | r94_250bps_2d.cfg       |
|FLO-MIN106  |SQK-LWB001|  included  | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-LWP001|            | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RAB201|  included  | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RAD002|            | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RAS201|            | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RBK001|  included  | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RLB001|  included  | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RLI001|            | r94_450bps_linear.cfg   |
|FLO-MIN106  |SQK-RNA001|            | r94_70bps_rna_linear.cfg|
|FLO-MIN106  |VSK-VBK001|            | r94_450bps_linear.cfg   |
