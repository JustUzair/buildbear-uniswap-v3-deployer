# Installation

```bash
git clone https://github.com/JustUzair/buildbear-uniswap-v3-deployer.git
npm i
```

## Environment Setup

Add RPC URL of a Network and a Private Key of a test account from BuildBear

- BuildBear Sandbox provides Mnemonic to convert it to a private key use the following command from foundry
  > `cast wallet private-key "YOUR_BUILDBEAR_MNEMONIC "`

```
BUILDBEAR_RPC=
PRIVATE_KEY=
```

## Deploying

Once environment is setup run:

> `npx hardhat tokamak-uniswap-v3-deploy --network buildbear`

Remove `--network buildbear` to run script on local hardhat node
