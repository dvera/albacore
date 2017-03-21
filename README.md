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

### possible configs are:
- /opt/albacore/FLO-MIN106_LSK108_linear.cfg
- /opt/albacore/FLO-MIN106_LSK208_2d.cfg
- /opt/albacore/FLO-MIN106_LSK208_linear.cfg
- /opt/albacore/FLO-MIN106_LSK208_tc.cfg
- /opt/albacore/FLO-MIN106_RAD001_linear.cfg
- /opt/albacore/FLO-MIN106_RAD002_linear.cfg

