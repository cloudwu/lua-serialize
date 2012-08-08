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

	-- You can use serialize.serialize(bin) to serialize them to one block
	-- You can send the block to the other process.
	local block, length = serialize.serialize(bin)
	serialize.deserialize(block)
```