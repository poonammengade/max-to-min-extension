-- Function to manage the state transition 
CREATE OR REPLACE FUNCTION max_to_min(state int[], val int)
RETURNS int[] AS $$
BEGIN
 IF state[1] IS NULL THEN
  state[1] := val;
  state[2] := val;
 ELSE
  IF val > state[1] THEN
   state[1] := val;
  END IF;
  IF val < state[2] THEN
   state[2] := val;
  END IF;
 END IF;
 RETURN state;
END;
$$ LANGUAGE plpgsql;

-- FINALFUNC for max_to_min AGGREGATE
CREATE OR REPLACE FUNCTION max_to_min_agg_finalfunc(state int[])
RETURNS text AS $$
BEGIN
 RETURN state[1]::text || ' -> ' || state[2]::text;
END;
$$ LANGUAGE plpgsql;

-- User AGGREGATE
CREATE AGGREGATE max_to_min(int) (
 SFUNC = max_to_min,
 STYPE = int[],
 FINALFUNC = max_to_min_agg_finalfunc
);
