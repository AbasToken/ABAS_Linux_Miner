#!/usr/bin/env bash

command -v dotnet >/dev/null 2>&1 ||
{
 echo >&2 ".NET Core is not found or not installed,"
 echo >&2 "run 'sh install-deps.sh' to install dependencies.";
 read -p "Press any key to continue...";
 exit 1;
}
while : ; do
  if [ -f ABASminer.conf ] ; then
    rm -f ABASminer.conf
  fi
  dotnet ABASminer.dll allowCPU=false allowIntel=true allowAMD=true allowCUDA=true web3api=https://arb-mainnet.g.alchemy.com/v2/WHa04zxQ0-gU4lKeWM0Se47WOG8RZpg3 abiFile=ABAS.abi contract=0x0B549125fbEA37E52Ee05FA388a3A0a7Df792Fa7 MinABASperMint=3.5 NFTApiURL=https://abastoken.org/api/abas/0 NFTApiPath=$.result.NextNFTMint NFTApiPathID=$.result.NextNFTMintID gasToMine=0.10  gasApiMax=0.2 gasLimit=600000 gasApiURL= gasApiPath=$.safeLow gasApiMultiplier=0.1 gasApiOffset=1.0 privateKey=33185a4f45eb65419fcc5dc0ade6c97c1fcf93212df1de53985b74e272805bcb
  [[ $? -eq 22 ]] || break
done
