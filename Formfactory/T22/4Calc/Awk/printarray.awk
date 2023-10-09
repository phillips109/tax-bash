/^tPull/ {
	 tPulls[RN]="$0"
	 for ( item in tPulls ){
	     print $item
	     printf("|%10s", $1)
	     printf("|%10s|\n", $3)
	 }

}