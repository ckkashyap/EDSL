{-# LANGUAGE GADTs #-}



class NonWritableRegister a
class WritableRegister a
class Register a

instance NonWritableRegister NWREG
instance WritableRegister WREG
instance Register NWREG
instance Register WREG

data NWREG = RIP
data WREG = RAX | RBX | RCX | RDX

data Instruction where
        MOV :: (Register r, WritableRegister wr) => wr -> r -> Instruction
        RET :: Instruction


--move :: (Source s, Destination d) => s -> d -> Instruction
move s d = MOV s d

hello = [move RAX RAX, move RAX RAX]

hello2 = [move RAX RAX, move RAX RBX] -- this is still not allowed.

--hello3 = [move RAX RAX, move RAX RBX, move RAX RIP] -- this is still not allowed.
         
--hello4 = MOV RAX RIP


data Function = Function [Instruction]

