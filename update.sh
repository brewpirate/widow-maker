#!/bin/bash 

echo $1
function community_guide {

  if [ $1 = "update" ]; then
    echo "Downloading latest BWCG by JupaCreations"  
    (cd doc; curl -O http://bwcommunity.divestick.net/JupaCreations_bwcg.pdf)
    exit 1
  fi

}

while getopts ":c:" opt; do
  case $opt in
    c)	
	community_guide $OPTARG 
	;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done





