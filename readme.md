## Item-One Analysis

1.	The run time increases as the data increases. The least amount of the time taken as per the graph below is for 1990 dataset and the maximum amount is taken by 1990-93 dataset.
2.	One more reason might be the number of resources available to carry out the MR task. If there are few nodes available, the time taken will be more, since the resource manager waits until the node finishes the first task(Map) before giving it the next one(Reduce).
3.	We can refer to figure 2.2 and 7.1 which explains how the resource manager assigns the task to the Node Manager and the Application master in that node assigns the tasks to various data nodes to carry out the task.
4.	Data locality might also be one of the factor, if the data is local (same node or same rack) the time taken would be comparatively lesser compared to the time taken when the data is not local (Different rack). 
5.	Number of Maps an reducers used for this job are defined below:

Item1 | item2
-------  | --------
1990 |1

![Shrija] 
(/Users/shrijachavan/Desktop/Shrija.jpeg)
