First = LOAD '/data/*' USING PigStorage(',') AS
(
userId : int,
movieId : int,
rating : double,
date : int
);
New_Data = FILTER First BY userId==200;
DUMP New_Data;