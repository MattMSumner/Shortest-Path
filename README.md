Shortest-Path
===================

This was the second of two coding challenges for a job I applied for.

Problem: Shortest Paths

Input File: data.dat

Given a directed graph $G=(V,\;E)$, and a source vertex $v_0\inV$, please write a program to output the lengths of the shortest paths between $v_0$ and all other vertices in the graph $G$. We assume the edges in digraph $G$ can have negative costs, provided that the sum of the costs around any cycle in the digraph is positiv. The vertices are labeled from 1 to $n$, if $G$ has $n$ vertices. The data fromats of the input and the output of this problem are arranged as follows.


Input:

Your program must accept the following input data from input file data.dat

1. A positive integer $n$, it stands for the total number vertices of $G$.
2. A source vertex $v_0$ ($v_0\in V$, i.e., it could be any vertex in $G$.)
3. The cost matrix $W$ of $G$. It is arranged by row-wise order as follows.

    the first row of cost matrix W (enter)
    the second row of cost matrix W (enter)
    ...
    the last row of cost matrix W (enter)


Output:

The lengths of the shortest paths from v0 to all other vertices $v_i$, the format is ($v_0$ -> $v_i$) = ?


Notes:

1. In the input, we arrange the input data $W(v_i,\;v_j)$ = '-', if $(v_i,\;v_j)$ is not an edge in $G$, $v_i\ne v_j$, and $W(v_i,\;v_j)=0$, if $v_i=v_j$.

2. Your program must be able to accept the multiple set of input data.


Example:

Assume we have the following 5-vertex digraph $G$ and its cost matrix $W$. 

If we let $v_0=1$, then your input data must be

    5
    1
    0 2 - - 10
    - 0 3 - 7
    - - 0 4 -
    - - - 0 5
    - - 6 - 0

and the output would be

    (1 -> 2) = 2
    (1 -> 3) = 5
    (1 -> 4) = 9
    (1 -> 5) = 9
