# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning
It is not quite useful partitioning by random beacuse it has trade offs like:
need to run the query in all the boats if you want to know the data between 12am and 1am.

## Partitioning by Hour
It´s quite better option than the last one, hence of the sorting by hour, but
in space and partitioning evenly, this doesn´t do the right work.


## Partitioning by Hash Value
it is a combination of both, first you can distributed evenly in all boats, but it has the same problem as the first one, you will need to run the query in every single boat.

