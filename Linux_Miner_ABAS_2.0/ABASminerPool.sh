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
  dotnet ABASminer.dll abiFile=ABAS.abi contract=0x0B549125fbEA37E52Ee05FA388a3A0a7Df792Fa7 web3api=https://arb-mainnet.g.alchemy.com/v2/WHa04zxQ0-gU4lKeWM0Se47WOG8RZpg3 pool=http://abastoken.org:8080 address=0x9172ff7884CEFED19327aDaCe9C470eF1796105c
  [[ $? -eq 22 ]] || break
done
