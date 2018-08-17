{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import Data.Fixed
import Data.List
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,192) ([1792,9345,14337,9224,9,416,128,3072,1030,65408,8455,0,0,0,0,0,0,0,257,260,2104,2340,16832,18720,3584,51458,2,16384,2,0,0,6656,2048,65280,16911,256,1025,2049,8200,16392,64,65,514,520,4112,4160,32896,33280,1024,4100,8196,32800,32,257,260,2056,2080,16448,16640,512,2050,4098,16400,16,0,18,0,144,0,1152,0,9216,0,8192,1,32,0,0,72,26624,8192,0,24576,0,3096,8,4095,66,0,0,13312,4160,32768,33473,61440,12543,4,0,0,0,0,1028,1040,8416,9360,1792,9345,14337,9224,49161,8257,73,0,72,2048,0,0,128,0,0,0,24576,64,0,515,4032,192,0,0,0,0,0,0,0,0,0,1052,1170,4096,256,32768,0,0,4,0,32,0,0,0,2048,0,0,0,57344,16391,0,63,2,504,16,4032,128,32256,1024,61440,8195,32768,7,1,60,8,0,64,0,512,0,4096,0,32768,0,416,128,3072,1030,65408,8455,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Expresion","List","ElementList","BExpresion","AExpresion","num","'T'","'F'","'*'","'/'","'//'","'%'","'+'","'-'","'=='","'!='","'<'","'>'","'<='","'>='","'!'","'&&'","'||'","'('","')'","'^'","'['","']'","','","'#'","'e'","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (9) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (11) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (33) = happyShift action_12
action_0 (4) = happyGoto action_13
action_0 (5) = happyGoto action_14
action_0 (7) = happyGoto action_3
action_0 (8) = happyGoto action_15
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_5
action_1 (10) = happyShift action_6
action_1 (11) = happyShift action_7
action_1 (17) = happyShift action_8
action_1 (24) = happyShift action_9
action_1 (27) = happyShift action_10
action_1 (30) = happyShift action_11
action_1 (33) = happyShift action_12
action_1 (5) = happyGoto action_2
action_1 (7) = happyGoto action_3
action_1 (8) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (16) = happyShift action_30
action_2 (18) = happyShift action_31
action_2 (19) = happyShift action_32
action_2 (34) = happyShift action_33
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (18) = happyShift action_47
action_3 (19) = happyShift action_48
action_3 (25) = happyShift action_49
action_3 (26) = happyShift action_50
action_3 (34) = happyShift action_51
action_3 _ = happyReduce_1

action_4 (12) = happyShift action_16
action_4 (13) = happyShift action_17
action_4 (14) = happyShift action_18
action_4 (15) = happyShift action_19
action_4 (16) = happyShift action_20
action_4 (17) = happyShift action_21
action_4 (18) = happyShift action_22
action_4 (19) = happyShift action_23
action_4 (20) = happyShift action_24
action_4 (21) = happyShift action_25
action_4 (22) = happyShift action_26
action_4 (23) = happyShift action_27
action_4 (29) = happyShift action_28
action_4 (34) = happyShift action_29
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_33

action_6 _ = happyReduce_14

action_7 _ = happyReduce_15

action_8 (9) = happyShift action_5
action_8 (17) = happyShift action_8
action_8 (27) = happyShift action_46
action_8 (33) = happyShift action_12
action_8 (8) = happyGoto action_45
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (11) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (24) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (30) = happyShift action_11
action_9 (33) = happyShift action_12
action_9 (5) = happyGoto action_2
action_9 (7) = happyGoto action_44
action_9 (8) = happyGoto action_4
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (11) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (24) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (33) = happyShift action_12
action_10 (5) = happyGoto action_41
action_10 (7) = happyGoto action_42
action_10 (8) = happyGoto action_43
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (9) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (11) = happyShift action_7
action_11 (17) = happyShift action_8
action_11 (24) = happyShift action_9
action_11 (27) = happyShift action_10
action_11 (30) = happyShift action_11
action_11 (31) = happyShift action_40
action_11 (33) = happyShift action_12
action_11 (5) = happyGoto action_36
action_11 (6) = happyGoto action_37
action_11 (7) = happyGoto action_38
action_11 (8) = happyGoto action_39
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (27) = happyShift action_35
action_12 (30) = happyShift action_11
action_12 (5) = happyGoto action_34
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (35) = happyAccept
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (16) = happyShift action_30
action_14 (18) = happyShift action_31
action_14 (19) = happyShift action_32
action_14 (34) = happyShift action_33
action_14 _ = happyReduce_3

action_15 (12) = happyShift action_16
action_15 (13) = happyShift action_17
action_15 (14) = happyShift action_18
action_15 (15) = happyShift action_19
action_15 (16) = happyShift action_20
action_15 (17) = happyShift action_21
action_15 (18) = happyShift action_22
action_15 (19) = happyShift action_23
action_15 (20) = happyShift action_24
action_15 (21) = happyShift action_25
action_15 (22) = happyShift action_26
action_15 (23) = happyShift action_27
action_15 (29) = happyShift action_28
action_15 (34) = happyShift action_29
action_15 _ = happyReduce_2

action_16 (9) = happyShift action_5
action_16 (17) = happyShift action_8
action_16 (27) = happyShift action_46
action_16 (33) = happyShift action_12
action_16 (8) = happyGoto action_81
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (9) = happyShift action_5
action_17 (17) = happyShift action_8
action_17 (27) = happyShift action_46
action_17 (33) = happyShift action_12
action_17 (8) = happyGoto action_80
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_5
action_18 (17) = happyShift action_8
action_18 (27) = happyShift action_46
action_18 (33) = happyShift action_12
action_18 (8) = happyGoto action_79
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (9) = happyShift action_5
action_19 (17) = happyShift action_8
action_19 (27) = happyShift action_46
action_19 (33) = happyShift action_12
action_19 (8) = happyGoto action_78
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_5
action_20 (17) = happyShift action_8
action_20 (27) = happyShift action_46
action_20 (33) = happyShift action_12
action_20 (8) = happyGoto action_77
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (9) = happyShift action_5
action_21 (17) = happyShift action_8
action_21 (27) = happyShift action_46
action_21 (33) = happyShift action_12
action_21 (8) = happyGoto action_76
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (9) = happyShift action_5
action_22 (17) = happyShift action_8
action_22 (27) = happyShift action_46
action_22 (33) = happyShift action_12
action_22 (8) = happyGoto action_75
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (9) = happyShift action_5
action_23 (17) = happyShift action_8
action_23 (27) = happyShift action_46
action_23 (33) = happyShift action_12
action_23 (8) = happyGoto action_74
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_5
action_24 (17) = happyShift action_8
action_24 (27) = happyShift action_46
action_24 (33) = happyShift action_12
action_24 (8) = happyGoto action_73
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (9) = happyShift action_5
action_25 (17) = happyShift action_8
action_25 (27) = happyShift action_46
action_25 (33) = happyShift action_12
action_25 (8) = happyGoto action_72
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_5
action_26 (17) = happyShift action_8
action_26 (27) = happyShift action_46
action_26 (33) = happyShift action_12
action_26 (8) = happyGoto action_71
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (9) = happyShift action_5
action_27 (17) = happyShift action_8
action_27 (27) = happyShift action_46
action_27 (33) = happyShift action_12
action_27 (8) = happyGoto action_70
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (9) = happyShift action_5
action_28 (17) = happyShift action_8
action_28 (27) = happyShift action_46
action_28 (33) = happyShift action_12
action_28 (8) = happyGoto action_69
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (27) = happyShift action_35
action_29 (30) = happyShift action_11
action_29 (5) = happyGoto action_68
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (27) = happyShift action_35
action_30 (30) = happyShift action_11
action_30 (5) = happyGoto action_67
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (27) = happyShift action_35
action_31 (30) = happyShift action_11
action_31 (5) = happyGoto action_66
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (27) = happyShift action_35
action_32 (30) = happyShift action_11
action_32 (5) = happyGoto action_65
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (27) = happyShift action_35
action_33 (30) = happyShift action_11
action_33 (5) = happyGoto action_64
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (16) = happyShift action_30
action_34 _ = happyReduce_43

action_35 (27) = happyShift action_35
action_35 (30) = happyShift action_11
action_35 (5) = happyGoto action_63
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_30
action_36 (18) = happyShift action_31
action_36 (19) = happyShift action_32
action_36 (34) = happyShift action_33
action_36 _ = happyReduce_8

action_37 (31) = happyShift action_61
action_37 (32) = happyShift action_62
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (18) = happyShift action_47
action_38 (19) = happyShift action_48
action_38 (25) = happyShift action_49
action_38 (26) = happyShift action_50
action_38 (34) = happyShift action_51
action_38 _ = happyReduce_10

action_39 (12) = happyShift action_16
action_39 (13) = happyShift action_17
action_39 (14) = happyShift action_18
action_39 (15) = happyShift action_19
action_39 (16) = happyShift action_20
action_39 (17) = happyShift action_21
action_39 (18) = happyShift action_22
action_39 (19) = happyShift action_23
action_39 (20) = happyShift action_24
action_39 (21) = happyShift action_25
action_39 (22) = happyShift action_26
action_39 (23) = happyShift action_27
action_39 (29) = happyShift action_28
action_39 (34) = happyShift action_29
action_39 _ = happyReduce_9

action_40 _ = happyReduce_4

action_41 (16) = happyShift action_30
action_41 (18) = happyShift action_31
action_41 (19) = happyShift action_32
action_41 (28) = happyShift action_60
action_41 (34) = happyShift action_33
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_47
action_42 (19) = happyShift action_48
action_42 (25) = happyShift action_49
action_42 (26) = happyShift action_50
action_42 (28) = happyShift action_59
action_42 (34) = happyShift action_51
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_16
action_43 (13) = happyShift action_17
action_43 (14) = happyShift action_18
action_43 (15) = happyShift action_19
action_43 (16) = happyShift action_20
action_43 (17) = happyShift action_21
action_43 (18) = happyShift action_22
action_43 (19) = happyShift action_23
action_43 (20) = happyShift action_24
action_43 (21) = happyShift action_25
action_43 (22) = happyShift action_26
action_43 (23) = happyShift action_27
action_43 (28) = happyShift action_58
action_43 (29) = happyShift action_28
action_43 (34) = happyShift action_29
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_24

action_45 _ = happyReduce_41

action_46 (9) = happyShift action_5
action_46 (17) = happyShift action_8
action_46 (27) = happyShift action_46
action_46 (33) = happyShift action_12
action_46 (8) = happyGoto action_57
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (9) = happyShift action_5
action_47 (10) = happyShift action_6
action_47 (11) = happyShift action_7
action_47 (17) = happyShift action_8
action_47 (24) = happyShift action_9
action_47 (27) = happyShift action_10
action_47 (30) = happyShift action_11
action_47 (33) = happyShift action_12
action_47 (5) = happyGoto action_2
action_47 (7) = happyGoto action_56
action_47 (8) = happyGoto action_4
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (9) = happyShift action_5
action_48 (10) = happyShift action_6
action_48 (11) = happyShift action_7
action_48 (17) = happyShift action_8
action_48 (24) = happyShift action_9
action_48 (27) = happyShift action_10
action_48 (30) = happyShift action_11
action_48 (33) = happyShift action_12
action_48 (5) = happyGoto action_2
action_48 (7) = happyGoto action_55
action_48 (8) = happyGoto action_4
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (9) = happyShift action_5
action_49 (10) = happyShift action_6
action_49 (11) = happyShift action_7
action_49 (17) = happyShift action_8
action_49 (24) = happyShift action_9
action_49 (27) = happyShift action_10
action_49 (30) = happyShift action_11
action_49 (33) = happyShift action_12
action_49 (5) = happyGoto action_2
action_49 (7) = happyGoto action_54
action_49 (8) = happyGoto action_4
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (9) = happyShift action_5
action_50 (10) = happyShift action_6
action_50 (11) = happyShift action_7
action_50 (17) = happyShift action_8
action_50 (24) = happyShift action_9
action_50 (27) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (33) = happyShift action_12
action_50 (5) = happyGoto action_2
action_50 (7) = happyGoto action_53
action_50 (8) = happyGoto action_4
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (27) = happyShift action_35
action_51 (30) = happyShift action_11
action_51 (5) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (16) = happyShift action_30
action_52 _ = happyReduce_32

action_53 (25) = happyShift action_49
action_53 _ = happyReduce_26

action_54 _ = happyReduce_25

action_55 (18) = happyFail []
action_55 (19) = happyFail []
action_55 (25) = happyShift action_49
action_55 (26) = happyShift action_50
action_55 (34) = happyShift action_51
action_55 _ = happyReduce_19

action_56 (18) = happyFail []
action_56 (19) = happyFail []
action_56 (25) = happyShift action_49
action_56 (26) = happyShift action_50
action_56 (34) = happyShift action_51
action_56 _ = happyReduce_18

action_57 (12) = happyShift action_16
action_57 (13) = happyShift action_17
action_57 (14) = happyShift action_18
action_57 (15) = happyShift action_19
action_57 (16) = happyShift action_20
action_57 (17) = happyShift action_21
action_57 (28) = happyShift action_58
action_57 (29) = happyShift action_28
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_42

action_59 _ = happyReduce_27

action_60 _ = happyReduce_6

action_61 _ = happyReduce_5

action_62 (9) = happyShift action_5
action_62 (10) = happyShift action_6
action_62 (11) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (24) = happyShift action_9
action_62 (27) = happyShift action_10
action_62 (30) = happyShift action_11
action_62 (33) = happyShift action_12
action_62 (5) = happyGoto action_82
action_62 (7) = happyGoto action_83
action_62 (8) = happyGoto action_84
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (16) = happyShift action_30
action_63 (28) = happyShift action_60
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (16) = happyShift action_30
action_64 _ = happyReduce_30

action_65 (16) = happyShift action_30
action_65 _ = happyReduce_28

action_66 (16) = happyShift action_30
action_66 _ = happyReduce_29

action_67 _ = happyReduce_7

action_68 (16) = happyShift action_30
action_68 _ = happyReduce_31

action_69 _ = happyReduce_36

action_70 (12) = happyShift action_16
action_70 (13) = happyShift action_17
action_70 (14) = happyShift action_18
action_70 (15) = happyShift action_19
action_70 (16) = happyShift action_20
action_70 (17) = happyShift action_21
action_70 (29) = happyShift action_28
action_70 _ = happyReduce_23

action_71 (12) = happyShift action_16
action_71 (13) = happyShift action_17
action_71 (14) = happyShift action_18
action_71 (15) = happyShift action_19
action_71 (16) = happyShift action_20
action_71 (17) = happyShift action_21
action_71 (29) = happyShift action_28
action_71 _ = happyReduce_22

action_72 (12) = happyShift action_16
action_72 (13) = happyShift action_17
action_72 (14) = happyShift action_18
action_72 (15) = happyShift action_19
action_72 (16) = happyShift action_20
action_72 (17) = happyShift action_21
action_72 (29) = happyShift action_28
action_72 _ = happyReduce_21

action_73 (12) = happyShift action_16
action_73 (13) = happyShift action_17
action_73 (14) = happyShift action_18
action_73 (15) = happyShift action_19
action_73 (16) = happyShift action_20
action_73 (17) = happyShift action_21
action_73 (29) = happyShift action_28
action_73 _ = happyReduce_20

action_74 (12) = happyShift action_16
action_74 (13) = happyShift action_17
action_74 (14) = happyShift action_18
action_74 (15) = happyShift action_19
action_74 (16) = happyShift action_20
action_74 (17) = happyShift action_21
action_74 (29) = happyShift action_28
action_74 _ = happyReduce_17

action_75 (12) = happyShift action_16
action_75 (13) = happyShift action_17
action_75 (14) = happyShift action_18
action_75 (15) = happyShift action_19
action_75 (16) = happyShift action_20
action_75 (17) = happyShift action_21
action_75 (29) = happyShift action_28
action_75 _ = happyReduce_16

action_76 (12) = happyShift action_16
action_76 (13) = happyShift action_17
action_76 (14) = happyShift action_18
action_76 (15) = happyShift action_19
action_76 (29) = happyShift action_28
action_76 _ = happyReduce_40

action_77 (12) = happyShift action_16
action_77 (13) = happyShift action_17
action_77 (14) = happyShift action_18
action_77 (15) = happyShift action_19
action_77 (29) = happyShift action_28
action_77 _ = happyReduce_39

action_78 (29) = happyShift action_28
action_78 _ = happyReduce_38

action_79 (29) = happyShift action_28
action_79 _ = happyReduce_37

action_80 (29) = happyShift action_28
action_80 _ = happyReduce_35

action_81 (29) = happyShift action_28
action_81 _ = happyReduce_34

action_82 (16) = happyShift action_30
action_82 (18) = happyShift action_31
action_82 (19) = happyShift action_32
action_82 (34) = happyShift action_33
action_82 _ = happyReduce_11

action_83 (18) = happyShift action_47
action_83 (19) = happyShift action_48
action_83 (25) = happyShift action_49
action_83 (26) = happyShift action_50
action_83 (34) = happyShift action_51
action_83 _ = happyReduce_13

action_84 (12) = happyShift action_16
action_84 (13) = happyShift action_17
action_84 (14) = happyShift action_18
action_84 (15) = happyShift action_19
action_84 (16) = happyShift action_20
action_84 (17) = happyShift action_21
action_84 (18) = happyShift action_22
action_84 (19) = happyShift action_23
action_84 (20) = happyShift action_24
action_84 (21) = happyShift action_25
action_84 (22) = happyShift action_26
action_84 (23) = happyShift action_27
action_84 (29) = happyShift action_28
action_84 (34) = happyShift action_29
action_84 _ = happyReduce_12

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 ((Boolean happy_var_1)
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 ((Numerical happy_var_1)
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Listing happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 _
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 ++ happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 ([(Listing happy_var_1)]
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 ([(Numerical happy_var_1)]
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([(Boolean happy_var_1)]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [(Listing happy_var_3)]
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [(Numerical happy_var_3)]
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [(Boolean happy_var_3)]
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn7
		 (True
	)

happyReduce_15 = happySpecReduce_1  7 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn7
		 (False
	)

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 == happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 /= happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 == happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 /= happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 < happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  7 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 > happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  7 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 <= happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  7 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 >= happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  7 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (not happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  7 happyReduction_25
happyReduction_25 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 && happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  7 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 || happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  7 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  7 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 /= happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  7 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 == happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  7 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (elem (Listing happy_var_1) happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  7 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (elem (Numerical happy_var_1) happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  7 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (elem (Boolean happy_var_1) happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  8 happyReduction_33
happyReduction_33 (HappyTerminal (Num happy_var_1))
	 =  HappyAbsSyn8
		 (read happy_var_1::Double
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  8 happyReduction_34
happyReduction_34 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 * happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  8 happyReduction_35
happyReduction_35 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 / happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  8 happyReduction_36
happyReduction_36 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 ^ (round happy_var_3 ::Int)
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  8 happyReduction_37
happyReduction_37 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (fromIntegral (happy_var_1 `div'` happy_var_3)
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  8 happyReduction_38
happyReduction_38 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 `mod'` happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  8 happyReduction_39
happyReduction_39 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 + happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  8 happyReduction_40
happyReduction_40 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 - happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  8 happyReduction_41
happyReduction_41 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (-happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  8 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  8 happyReduction_43
happyReduction_43 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn8
		 ((fromIntegral(length(happy_var_2)))
	)
happyReduction_43 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Num happy_dollar_dollar -> cont 9;
	Truel -> cont 10;
	Falsel -> cont 11;
	Mul -> cont 12;
	Div -> cont 13;
	IDiv -> cont 14;
	Mod -> cont 15;
	Suml -> cont 16;
	Diffl -> cont 17;
	Equals -> cont 18;
	Different -> cont 19;
	Minor -> cont 20;
	Greater -> cont 21;
	MinorE -> cont 22;
	GreaterE -> cont 23;
	Notl -> cont 24;
	Andl -> cont 25;
	Orl -> cont 26;
	OBrace -> cont 27;
	CBrace -> cont 28;
	Pot -> cont 29;
	LSquare -> cont 30;
	RSquare -> cont 31;
	Coma -> cont 32;
	HashTag -> cont 33;
	Exists -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data EvaluationResult = Boolean Bool | Numerical Double | Listing [EvaluationResult]
    deriving(Show,Eq,Ord)


data Expresion = ListExpresion [Expresion] 
    | AExpresion Double 
    | BExpresion Bool 
    | Equal ListExpresion ListExpresion 
    | Diff ListExpresion ListExpresion
    deriving(Show,Eq,Ord)
main = do 
    contents <- getLine
    putStrLn (show (parseCalc (alexScanTokens  contents)))
    main
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc13656_0/ghc_2.h" #-}














































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
