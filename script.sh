# script.sh

colors=("S" "H" "D" "C")

echo "output.txt" > "output.txt"

for i in {1..52}; do
    value=$(($(($(($i - 1)) % 13)) + 1))
    suit=$(($(($i - 1)) / 13))
    text="        $i:"
    if ((i < 10)); then text="$text "; fi
    text="$text ($value,"
    if ((value < 10)); then text="$text "; fi
    text="$text\"${colors[$suit]}\"),"
    echo "$text" >> "output.txt"
done

echo "" >> "output.txt"

for i in {1..52}; do
    value=$(($(($(($i - 1)) % 13)) + 1))
    suit=$(($(($i - 1)) / 13))
    text="        ($value,"
    if ((value < 10)); then text="$text "; fi
    text="$text\"${colors[$suit]}\"):"
    text="$text $i,"
    echo "$text" >> "output.txt"
done