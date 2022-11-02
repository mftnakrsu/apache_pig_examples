Data = LOAD '/data/*' USING PigStorage(',') AS
(
userId : int,
movieId : int,
rating : double,
date : int
);
DUMP Data;