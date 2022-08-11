

echo "1 : for calculate feet to inch "
echo "2 : for calculate inch to feet "
echo "3 : for calculate feet to meter "
echo "4 : for calculate meter to feet "
read -p "enter single digit no : " num

case $num in
        1)              #feet to inch 
		read -p "enter feet  value : " feet
                inch=`echo $((12 * $feet)) | awk '{print $1}'` #1ft=12 inch
		echo $inch "inch"
                ;;
        2)         #inch to feet 
		read -p "enter inch value : " inch
                b=0.0833333                    #1ich=o.0833333ft
		feet=`echo $inch $b | awk '{print $1*$2}'`
		echo $feet "feet"
                ;;
        3)            #feet to meter 
                read -p "enter feet value : " feet
                b=0.3048		#1ft=0.3048meter
                meter=`echo  $feet $b | awk '{print $1*$2}'`
		echo $meter "meter"
                ;;
        4)                #meter to feet 
		read -p "enter meter value : " meter
                b=3.2808            #1mt=3.2808ft
                feet=`echo $meter $b | awk '{print $1*$2}'`
		echo $feet "feet"
                ;;
        *)
                echo "invalid number"
		;;
esac
