-- DECLARE @Eng INT;
-- DECLARE @Phy INT;
-- DECLARE @Che INT;
-- DECLARE @Total INT;
-- DECLARE @Pr INT;

-- Set @Eng=70;
-- Set @Phy=85;
-- set @Che=98;

-- set @Total= @Eng+@Phy+@Che;
-- set @Pr=@Total/3;

-- IF (@Pr>80)
-- BEGIN
--     SELECT 'Grade-A',@pr AS Result;
-- END
-- ELSE IF @Pr>65 AND @Pr<=80
-- BEGIN
--     SELECT 'Grade-B',@Pr AS Result;
-- END
-- ELSE IF @Pr>45 AND @Pr<=65
-- Begin
--     SELECT 'Grade-C',@pr AS Result;
-- END
-- ELSE
-- BEGIN
--     SELECT 'Fail',@pr AS Result;
-- END

DECLARE @count int;
SET @count = 1;

while (@count<10)
BEGIN
    SELECt 'Welcome to my hart' ,@count;
    set @count+=1;
END
SELECT 'THE LOOP IS END';
