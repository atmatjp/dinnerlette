#!/bin/zsh

ryouri=(
    "煎り豆" 
    "血肉"  
    "一郎系ラーメン" 
    "その辺の草"
    "うな重"
)

banmesi=${#ryouri}
random_index=$(( $RANDOM % $banmesi ))

echo "抽選開始"
echo -e  "\n"

for i in {1..20}; do
    roulette=${ryouri[$(( $RANDOM % $banmesi + 1 ))]}
    echo -n "$roulette "
    sleep 0.1
done

echo -e "\n"
echo "抽選結果"

result=${ryouri[$(( random_index + 1 ))]}

echo "「$result」を食え"
