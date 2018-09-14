#!/bin/bash

tput clear


let maxWidth=$(tput cols)
let maxHeight=$(tput lines)

let width=$(tput cols)/2
let height=$(tput lines)/2

tput cup $((maxHeight / 2)) $((maxWidth / 2))


 arrowUp(){

 	while true
 	do
 		if test $height -gt 0
		then
			temp=$((temp + 1))
			temp=$((temp % 7))
			tput setaf $temp
			tput setf $temp
			 
		 	
		 	echo "0"
		 	let height=height-1 ;
		 	tput cup $height $width
			if test $height -eq 0
			then
				let maxWidth=$(tput cols)
				let maxHeight=$(tput lines)
				let width=$(tput cols)/2
				let height=$(tput lines)/2
				clear
				tput cup $height $width
			fi
		fi
 		read -t 0.1 -rsn1 input
		case "$input" in
		    $'\x1b')   
			read -rsn1 -t 0.1 input
	        if [[ "$input" == "[" ]]; 
	        then
			    read -rsn1 -t 0.1 input
			    
		    if [[ $input = C ]]
			then
				tput cup $((height % 10)) $((width % 10))
				echo "@"
				tput cup $height $width
				arrowLeft
		    elif [[ $input = D ]]
			then
				tput cup $((height % 10)) $((width % 10))
				echo "@"
				tput cup $height $width
				arrowRight
		    elif [[ $input = q ]]
				then
					tput rmcup
					exit 0					
			    fi
			fi;;
		esac
 	done 	
 }

 arrowDown(){

 	while true
 	do
 		if test $height -lt $maxHeight 
		then
			temp=$((temp + 2))
			temp=$((temp % 7))
			tput setaf $temp
			tput setf $temp
			
			echo "0"
			let height=height+1 ;
			tput cup $height $width 
			if test $height -eq $maxHeight
			then
				let width=$(tput cols)/2
				let height=$(tput lines)/2
				clear
				tput cup $height $width
			fi
		fi
 		
 		read -t 0.1 -rsn1 input
		case "$input" in
		    $'\x1b')   
			read -rsn1 -t 0.1 input
	        if [[ "$input" == "[" ]]; 
	        then
			    read -rsn1 -t 0.1 input
			    
		    if [[ $input = C ]]
			then
				tput cup $((height % 16)) $((width % 15))
				echo "@"
				tput cup $height $width
				arrowLeft
		    elif [[ $input = D ]]
			then
				tput cup $((height % 19)) $((width % 18))
				echo "@"
				tput cup $height $width
				arrowRight
		    elif [[ $input = q ]]
				then
					tput rmcup
					exit 0					
			    fi
			fi;;
		esac
 	done
 }

arrowLeft(){

 	while true
 	do
 		if test $width -lt $maxWidth
		then
			temp=$((temp + 3))
			temp=$((temp % 7))
			tput setaf $temp
			tput setf $temp
			
			echo "0"
			let width=width+1 ;
			tput cup $height $width 
			if test $width -eq $maxWidth
			then
				let width=$(tput cols)/2
				let height=$(tput lines)/2
				clear
				tput cup $height $width
			fi
		fi
 		read -t 0.1 -rsn1 input
		case "$input" in
	    $'\x1b')   
			read -rsn1 -t 0.1 input
	        if [[ "$input" == "[" ]]; 
	        then
			    read -rsn1 -t 0.1 input
			    
	 		if [[ $input = B ]]
			then
				tput cup $((height % 45)) $((width % 23))
				echo "@"
				tput cup $height $width
				arrowDown
		    elif [[ $input = A ]]
			then
				tput cup $((height % 12)) $((width % 78))
				echo "@"
				tput cup $height $width
				arrowUp
		    elif [[ $input = q ]]
				then
					tput rmcup
					exit 0					
			    fi
			fi;;
		esac
 	done
}

arrowRight(){

	while true
 	do

 		if test $width -gt 0
		then
			temp=$((temp + 4))
			temp=$((temp % 7))	
			tput setaf $temp
			tput setf $temp
			echo "0" 	
			let width=width-1 ;
			tput cup $height $width 
		    if test $width -eq 0
			then
				let width=$(tput cols)/2
				let height=$(tput lines)/2
				clear
				tput cup $height $width
			fi
	    fi
 		read -t 0.1 -rsn1 input
		case "$input" in
	    	$'\x1b')   
			read -rsn1 -t 0.1 input
	        if [[ "$input" == "[" ]]; 
	        then
			    read -rsn1 -t 0.1 input
			    
				if [[ $input = B ]]
				then
					tput cup $((height % 34)) $((width % 65))
					echo "@"
					tput cup $height $width
					arrowDown
			    elif [[ $input = A ]]
				then
					tput cup $((height % 35)) $((width % 89))
					echo "@"
					tput cup $height $width
					arrowUp
			    elif [[ $input = q ]]
				then
					tput rmcup
					exit 0					
			    fi
			fi;;
		esac    
 	done
}

while :
do
	read -rsn1 input
	case "$input" in
	    $'\x1b')   
		read -rsn1 -t 0.1 input
        if [[ "$input" == "[" ]]; 
        then
		    read -rsn1 -t 0.1 input
		    
			if [[ $input = A ]]
			then
				tput cup $((height % 35)) $((width % 89))
				echo "@"
				tput cup $height $width
				arrowUp
		    elif [[ $input = B ]]
			then
				tput cup $((height % 35)) $((width % 89))
				echo "@"
				tput cup $height $width
				arrowDown
		    elif [[ $input = C ]]
			then
				tput cup $((height % 35)) $((width % 89))
				echo "@"
				tput cup $height $width
				arrowLeft
		    elif [[ $input = D ]]
			then
				tput cup $((height % 35)) $((width % 89))
				echo "@"
				tput cup $height $width
				arrowRight				
		    fi
    	fi;;	
    esac
done

tput rmcup

exit 0
