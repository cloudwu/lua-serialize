```lua
	serialize = require "serialize"

	-- pack serialize lua objects into a lightuserdata (use malloc internal) 
	-- It support type : nil , number , boolean, lightuserdata , string , table (without recursion)
	bin = serialize.pack (...) 

	-- You can append some objects end of the binary block packed before
	serialize.append(bin, ...)

	-- unpack extract ... from bin, and free the memory. 
	-- You can only unpack binary block once.
	serialize.unpack(bin)
```