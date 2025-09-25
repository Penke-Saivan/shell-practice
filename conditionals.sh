#!/bin/bash

#Even or not

if[$(($1)%2) -e 0]; then 
    echo "Eeveen"
else
    echo "odd"
fi    

echo "End of statements"