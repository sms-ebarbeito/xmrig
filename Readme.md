# Run your XMRIG Miner on Docker!

This is a base Docker File to compile and run xmrig on docker. To setup a correct configuration to miner you have two options:

## Installation

You have two options:

### 1) Modify config.json
Replace config.json with one of your preferences

### 2) Create a new DockerFile using this build as base import

```bash
FROM  kriketronic/xmrig

COPY config.json /xmrig/build/config.json

WORKDIR /xmrig/build
ENTRYPOINT ["./xmrig"]
```

## IMPORTANT:
The container needs to run in PRIVILEGED MODE ON

Enjoy!

## donations:
### Monero:
48gNx4o3YpB2ob7L87DKHLVrbe4cEEdDfZgbCLVseCrL7x1BgC9S3PLYGZkTEgBaCzAFXxbYHxbux5dY68ypKpRC2juEDJs