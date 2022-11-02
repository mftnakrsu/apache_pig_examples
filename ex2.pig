First = LOAD '/data/*' USING PigStorage(',') AS
(
userId : int,
movieId : int,
rating : double,
date : int
);
New_Data = FILTER First BY rating>3.0;
DUMP New_Data;