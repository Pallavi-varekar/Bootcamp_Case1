read -p "enter a number : " num

case $num in
        1)
                echo "one"
                ;;
        10)
                echo "ten"
                ;;
        100)
                echo "hundred"
                ;;
        1000)
                echo "thousand"
                ;;
        *)
                echo "enter valid no"
                ;;
esac
