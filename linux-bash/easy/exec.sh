 #!/bin/bash
 
 read x
 read y
 
 if [[ "$x" -eq "$y" ]]; then
    echo "X is equal to Y"
 fi

 # Greater than
if [[ "$x" -gt "$y" ]]; then
  echo "X is greater than Y"
fi

# Less than
if [[ "$x" -lt "$y" ]]; then
  echo "X is less than Y"
fi