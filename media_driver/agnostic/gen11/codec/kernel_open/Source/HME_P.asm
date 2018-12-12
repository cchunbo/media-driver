/* 
* Copyright (c) 2018, Intel Corporation
*
* Permission is hereby granted, free of charge, to any person obtaining a
* copy of this software and associated documentation files (the "Software"),
* to deal in the Software without restriction, including without limitation
* the rights to use, copy, modify, merge, publish, distribute, sublicense,
* and/or sell copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
* OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
* OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
* ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
* OTHER DEALINGS IN THE SOFTWARE.
*/
 
L0:
         add      (2|M0)                 r7.11<1>:w       r1.22<2;2,1>:ub        -16:w                  
(W)      shr      (1|M0)                 r126.2<2>:uw     r0.1<0;1,0>:ud         0xC:uw                 
         asr      (2|M0)                 r7.13<1>:w       r7.11<2;2,1>:w         1:w                    
         mov      (1|M0)                 r126.2<2>:ub     16:w                   
(W)      and      (1|M0)                 r125.0<1>:uw     r126.2<0;1,0>:uw       0xFFF:uw               
         shr      (2|M0)                 r124.0<1>:uw     r7.13<2;2,1>:uw        0x2:uw                 
(W)      mov      (1|M0)                 r126.2<1>:w      r126.2<0;1,0>:b        
         add      (1|M0)                 r7.20<2>:b       r1.17<0;1,0>:b         1:w                    
         mov      (1|M0)                 r123.1<1>:ud     r2.24<0;1,0>:b         
         mov      (1|M0)                 r24.5<1>:d       r125.0<0;1,0>:uw       
         shl      (1|M0)                 r7.3<1>:w        r125.0<0;1,0>:w        4:w                    
         mul      (1|M0)                 r125.0<1>:w      r124.2<0;1,0>:b        r126.2<0;1,0>:w        
(W)      mov      (1|M0)                 r122.0<1>:hf     0x1:hf                 
         mov      (1|M0)                 r24.4<1>:d       r7.20<0;1,0>:ub        
(W)      mov      (1|M0)                 f0.0<1>:ud       r123.1<0;1,0>:ud       
         add      (1|M0)                 r126.2<2>:b      r124.0<0;1,0>:b        r125.0<0;1,0>:w        
(W)      mov      (1|M0)                 r125.0<1>:w      r2.28<0;1,0>:ub        
(W)      and      (1|M0)                 r126.0<2>:uw     r0.1<0;1,0>:ud         0xFFF:uw               
(f0.0)   sel      (32|M0)                r120.0<1>:w      r122.0<0;1,0>:w        0:w                    
         shl      (1|M0)                 r24.4<1>:d       r24.4<0;1,0>:d         r125.0<0;1,0>:w        
         mov      (32|M0)                r26.0<1>:w       r2.29<0;1,0>:ub        
         mov      (16|M0)                r37.0<1>:f       0x0:f                  
         shr      (1|M0)                 r123.0<2>:ub     r1.12<0;1,0>:ub        0x7:uw                 
         mov      (1|M0)                 r25.5<1>:w       r1.17<0;1,0>:ub        
         add      (2|M0)                 r28.4<1>:w       -r1.22<2;2,1>:ub       5:w                    
         asr      (1|M0)                 r25.4<1>:w       r7.3<0;1,0>:w          2:w                    
         shl      (1|M0)                 r125.1<1>:w      r126.0<0;1,0>:w        4:w                    
         cmp      (8|M0)     (ne)f0.0    null<1>:w        r120.0<8;8,1>:w        0:w                    
         shl      (1|M0)                 r125.1<1>:d      r126.0<0;1,0>:uw       r125.0<0;1,0>:w        
         add      (1|M0)                 r24.4<1>:d       r24.4<0;1,0>:d         3:w                    
         mov      (8|M0)                 r38.0<1>:f       0x0:f                  
         and      (1|M0)                 r7.2<1>:d        r1.24<0;1,0>:ub        16:w                   
         mov      (1|M0)                 r38.2<1>:f       r1.2<0;1,0>:f          
         and      (1|M0)                 r7.3<1>:d        r1.24<0;1,0>:ub        32:w                   
         mov      (2|M0)                 r38.10<1>:ub     r126.2<0;1,0>:ub       
(W)      mov      (1|M0)                 r126.1<1>:hf     0xFF:hf                
         and      (1|M0)                 r7.4<1>:d        r1.24<0;1,0>:ub        8:w                    
         mov      (8|M0)                 r22.0<1>:f       r2.0<8;8,1>:f          
         mov      (8|M0)                 r39.0<1>:f       r3.0<8;8,1>:f          
         mov      (4|M0)                 r40.0<1>:f       r4.0<4;4,1>:f          
         mov      (2|M0)                 r40.4<1>:f       r4.4<2;2,1>:f          
         add      (1|M0)                 r24.7<1>:d       r6.4<0;1,0>:d          209207296:d            
         mov      (2|M0)                 r40.6<1>:f       0x0:f                  
         add      (1|M0)                 r25.0<1>:d       r6.4<0;1,0>:d          276324352:d            
         add      (1|M0)                 r25.4<1>:d       r6.4<0;1,0>:d          276381696:d            
         add      (2|M0)                 r28.2<1>:w       -r1.22<2;2,1>:ub       16:w                   
         add      (1|M0)                 r25.5<1>:d       r6.4<0;1,0>:d          211337216:d            
         mov      (1|M0)                 r36.0<1>:f       0x0:f                  
         mov      (8|M0)                 r73.0<1>:f       0x0:f                  
         mov      (1|M0)                 r25.28<2>:ub     0:w                    
         mov      (1|M0)                 r28.4<1>:f       0x0:f                  
         mov      (1|M0)                 r28.12<2>:ub     0:w                    
         mov      (2|M0)                 r7.13<1>:w       -r7.13<2;2,1>:w        
         shr      (2|M0)                 r28.0<1>:uw      r7.11<2;2,1>:uw        0x1:uw                 
         shl      (1|M0)                 r24.5<1>:d       r24.5<0;1,0>:d         r125.0<0;1,0>:w        
         shl      (1|M0)                 r7.2<1>:w        r126.0<0;1,0>:w        4:w                    
         shl      (1|M0)                 r37.4<1>:w       r126.0<0;1,0>:w        4:w                    
         mov      (1|M0)                 r37.5<1>:hf      r7.3<0;1,0>:hf         
(W)      mov      (1|M0)                 r28.6<1>:ud      r123.0<0;1,0>:ub       
         mov      (2|M0)                 r37.3<2>:f       r1.3<2;1,0>:f          
         shl      (1|M0)                 r25.5<1>:w       r25.5<0;1,0>:w         4:w                    
         and      (2|M0)                 r28.4<1>:w       r28.4<2;2,1>:w         -4:w                   
         mov      (1|M0)                 r25.3<1>:ud      r25.4<0;1,0>:w         
         shl      (1|M0)                 r25.1<1>:d       r125.1<0;1,0>:w        1:w                    
         shl      (1|M0)                 r24.6<1>:d       r125.1<0;1,0>:d        3:w                    
         asr      (1|M0)                 r25.6<1>:d       r125.1<0;1,0>:w        1:w                    
         mov      (2|M0)                 r38.0<1>:f       r1.0<2;2,1>:f          
         and      (1|M0)                 r24.4<1>:d       r24.4<0;1,0>:d         -4:w                   
         mov      (1|M0)                 r38.7<1>:f       r1.7<0;1,0>:f          
(f0.0)   sel      (8|M0)                 r24.0<1>:w       r126.1<0;1,0>:w        0:w                    
         mov      (1|M0)                 r37.20<2>:ub     0x0:uw                 
L1136:
         shl      (1|M0)                 r126.0<1>:w      r25.28<0;1,0>:ub       1:w                    
(W)      mov      (1|M0)                 f0.0<1>:ud       r28.6<0;1,0>:ud        
         add      (1|M0)                 a0.0<1>:uw       r126.0<0;1,0>:uw       0x300:uw               
         mov      (1|M0)                 r29.4<1>:hf      0xFFFF:hf              
(f0.0)   sel      (1|M0)                 r125.0<1>:w      r[a0.0]<0;1,0>:ub      0:w                    
         cmp      (1|M0)     (eq)f0.0    null<1>:d        r7.2<0;1,0>:d          0:w                    
         mov      (1|M0)                 r38.5<2>:ub      r125.0<0;1,0>:ub       
(W&f0.0) jmpi     L2432       
L1264:
(W)      mul      (1|M0)                 acc0.0<1>:d      r36.0<0;1,0>:d         r24.8<0;1,0>:uw        
(W)      mov      (8|M0)                 r126.0<1>:f      r0.0<8;8,1>:f          
         mach     (1|M0)                 r36.0<1>:d       r36.0<0;1,0>:d         r24.4<0;1,0>:d         
(W)      add      (1|M0)                 a0.0<1>:ud       r6.1<0;1,0>:ud         0x2190000:ud           
(W)      mov      (1|M0)                 r126.2<1>:f      0x7:f                  
(W)      mov      (1|M0)                 r126.0<1>:f      r24.6<0;1,0>:f         
(W)      mov      (1|M0)                 r124.4<1>:w      r1.25<0;1,0>:ub        
         add      (1|M0)                 r126.1<1>:d      r36.0<0;1,0>:d         r24.5<0;1,0>:d         
(W)      mov      (1|M0)                 r123.0<1>:hf     0x1:hf                 
(W)      send     (8|M0)                 r125             r126:f                 0xC                    a0.0                
(W)      mov      (1|M0)                 r119.0<1>:hf     0x0:hf                 
(W)      mov      (8|M0)                 r50.0<1>:b       r125.0<8;8,1>:b        
         asr      (4|M0)                 r124.0<1>:w      (abs)r50.0<4;4,1>:w    2:w                    
         cmp      (4|M0)                 (lt)f0.0         null<1>:w              r124.0<4;4,1>:w        r124.4<0;1,0>:w     
(f0.0)   sel      (4|M0)                 r123.1<1>:w      r123.0<0;1,0>:w        0:w                    
         and      (1|M0)                 r122.0<1>:w      r123.2<0;1,0>:w        r123.1<0;1,0>:w        
(W)      mov      (1|M0)                 f0.0<1>:ud       r122.0<0;1,0>:uw       
(f0.0)   sel      (32|M0)                r120.0<1>:w      r123.0<0;1,0>:w        0:w                    
         cmp      (1|M0)     (ne)f0.0    null<1>:w        r120.0<0;1,0>:w        0:w                    
(f0.0)   sel      (1|M0)                 r28.12<2>:ub     r119.0<0;1,0>:w        1:w                    
         cmp      (1|M0)     (eq)f0.0    null<1>:uw       r28.12<0;1,0>:ub       0x0:uw                 
(W&f0.0) jmpi     L2400       
L1616:
         asr      (2|M0)                 r122.2<1>:w      r50.0<2;2,1>:w         2:w                    
         mov      (2|M0)                 r122.0<1>:hf     0x200:hf               
         asr      (1|M0)                 r122.1<1>:w      r1.13<0;1,0>:w         2:w                    
         add      (2|M0)                 r122.5<1>:d      r122.2<2;2,1>:w        r7.11<2;2,1>:uw        
         add      (2|M0)                 r121.0<1>:d      r122.2<2;2,1>:w        -r7.11<2;2,1>:uw       
         add      (2|M0)                 r122.6<1>:w      r122.2<2;2,1>:w        -r28.0<2;2,1>:w        
         cmp      (2|M0)                 (gt)f0.0         null<1>:d              r122.5<2;2,1>:d        r122.0<2;2,1>:w     
         add      (2|M0)                 r122.8<1>:w      r28.2<2;2,1>:w         r122.0<2;2,1>:w        
(~f0.0)  mov      (2|M0)                 r122.8<1>:hf     r122.6<2;2,1>:hf       
         cmp      (2|M0)                 (lt)f0.0         null<1>:d              r121.0<2;2,1>:d        -r122.0<2;2,1>:w    
         shl      (1|M0)                 r122.4<1>:w      r1.18<0;1,0>:ub        4:w                    
         add      (1|M0)                 r122.5<1>:w      r25.5<0;1,0>:w         16:w                   
         mov      (2|M0)                 r6.10<1>:w       -r1.22<2;2,1>:ub       
(f0.0)   mov      (2|M0)                 r122.8<1>:w      -r122.0<2;2,1>:w       
         add      (2|M0)                 r120.0<1>:w      r122.4<2;2,1>:w        -1:w                   
         add      (2|M0)                 r122.8<1>:w      r122.8<2;2,1>:w        r7.2<2;2,1>:w          
         and      (2|M0)                 r120.0<1>:w      r120.0<2;2,1>:w        -4:w                   
         cmp      (2|M0)                 (gt)f0.0         null<1>:w              r122.4<2;2,1>:w        r122.8<2;2,1>:w     
         mov      (32|M0)                r123.0<1>:ub     r37.0<8;8,1>:ub        
(~f0.0)  mov      (2|M0)                 r122.8<1>:hf     r120.0<2;2,1>:hf       
         mov      (32|M0)                r124.0<1>:ub     r38.0<8;8,1>:ub        
         cmp      (2|M0)                 (gt)f0.0         null<1>:w              r122.8<2;2,1>:w        r6.10<2;2,1>:w      
         mov      (4|M0)                 r124.24<1>:ub    r25.28<0;1,0>:ub       
(~f0.0)  mov      (2|M0)                 r122.8<1>:hf     r28.4<2;2,1>:hf        
         mov      (16|M0)                r125.0<1>:f      r22.0<8;8,1>:f         
         add      (2|M0)                 r123.0<1>:w      r122.8<2;2,1>:w        -r7.2<2;2,1>:w         
         mov      (8|M0)                 r126.0<1>:f      0x0:f                  
         mov      (32|M0)                r8.0<1>:hf       r123.0<8;8,1>:hf       
         mov      (32|M0)                r10.0<1>:hf      r125.0<8;8,1>:hf       
         mov      (16|M0)                r12.0<1>:f       r39.0<8;8,1>:f         
(W)      mov      (1|M0)                 a0.0<1>:ud       r25.5<0;1,0>:ud        
         and      (1|M0)                 r8.13<2>:b       r8.13<0;1,0>:b         -8:w                   
         mov      (2|M0)                 r8.0<1>:hf       r123.0<2;2,1>:hf       
         mov      (8|M0)                 r11.0<1>:f       0x0:f                  
         mov      (1|M0)                 r8.1<1>:f        0x0:f                  
         mov      (16|M0)                r14.0<1>:f       r123.0<8;8,1>:f        
         send     (16|M0)                r41:uw           r8:f                   0x8                    a0.0                
(W)      mov      (1|M0)                 a0.0<1>:ud       r25.0<0;1,0>:ud        
         and      (1|M0)                 r125.5<1>:d      r41.6<0;1,0>:d         16776960:d             
         mov      (8|M0)                 r18.0<1>:f       r42.0<8;8,1>:f         
         and      (1|M0)                 r125.20<2>:b     r41.0<0;1,0>:b         3:w                    
         mov      (8|M0)                 r19.0<1>:f       r43.0<8;8,1>:f         
         mov      (16|M0)                r16.0<1>:f       r125.0<8;8,1>:f        
         mov      (8|M0)                 r20.0<1>:f       r44.0<8;8,1>:f         
         mov      (8|M0)                 r21.0<1>:f       r45.0<8;8,1>:f         
         and      (1|M0)                 r16.20<2>:b      r125.20<0;1,0>:b       3:w                    
         mov      (1|M0)                 r16.21<2>:b      r125.21<0;1,0>:b       
         mov      (1|M0)                 r16.22<2>:b      r125.22<0;1,0>:b       
         send     (16|M0)                r29:uw           r14:f                  0xD                    a0.0                
L2400:
         shl      (32|M0)                r30.0<1>:w       r30.0<8;8,1>:w         r26.0<8;8,1>:w         
         shl      (32|M0)                r32.0<1>:w       r32.0<8;8,1>:w         r26.0<8;8,1>:w         
L2432:
         mov      (32|M0)                r58.0<1>:ub      r37.0<8;8,1>:ub        
         mov      (32|M0)                r59.0<1>:ub      r38.0<8;8,1>:ub        
         cmp      (1|M0)     (eq)f0.0    null<1>:uw       r28.12<0;1,0>:ub       0x0:uw                 
         mov      (16|M0)                r60.0<1>:f       r22.0<8;8,1>:f         
         mov      (2|M0)                 r58.0<1>:hf      r7.13<2;2,1>:hf        
         mov      (4|M0)                 r59.24<1>:ub     r25.28<0;1,0>:ub       
         mov      (8|M0)                 r61.0<1>:f       0x0:f                  
(W&f0.0) jmpi     L2768       
L2560:
         mov      (8|M0)                 r125.0<1>:f      r48.0<8;8,1>:f         
         mov      (8|M0)                 r126.0<1>:f      r49.0<8;8,1>:f         
         mov      (32|M0)                r117.0<1>:hf     r58.0<8;8,1>:hf        
         mov      (32|M0)                r119.0<1>:hf     r60.0<8;8,1>:hf        
         mov      (16|M0)                r121.0<1>:f      r39.0<8;8,1>:f         
(W)      mov      (1|M0)                 a0.0<1>:ud       r25.4<0;1,0>:ud        
         mov      (16|M0)                r123.0<1>:f      r125.0<8;8,1>:f        
         and      (1|M0)                 r117.13<2>:b     r117.13<0;1,0>:b       -8:w                   
         mov      (2|M0)                 r117.0<1>:hf     r7.13<2;2,1>:hf        
         mov      (1|M0)                 r117.1<1>:f      0x0:f                  
         mov      (8|M0)                 r120.0<1>:f      0x0:f                  
         send     (16|M0)                r51:uw           r117:f                 0x8                    a0.0                
(W)      jmpi     L2912       
L2768:
         mov      (32|M0)                r121.0<1>:hf     r58.0<8;8,1>:hf        
         mov      (32|M0)                r123.0<1>:hf     r60.0<8;8,1>:hf        
         mov      (16|M0)                r125.0<1>:f      r39.0<8;8,1>:f         
(W)      mov      (1|M0)                 a0.0<1>:ud       r24.7<0;1,0>:ud        
         and      (1|M0)                 r121.13<2>:b     r121.13<0;1,0>:b       -8:w                   
         mov      (2|M0)                 r121.0<1>:hf     r7.13<2;2,1>:hf        
         mov      (1|M0)                 r121.1<1>:f      0x0:f                  
         mov      (8|M0)                 r124.0<1>:f      0x0:f                  
         send     (16|M0)                r51:uw           r121:f                 0x8                    a0.0                
L2912:
         and      (1|M0)                 r60.5<1>:d       r51.6<0;1,0>:d         16776960:d             
         mov      (8|M0)                 r123.0<1>:f      r52.0<8;8,1>:f         
         and      (1|M0)                 r60.20<2>:b      r51.0<0;1,0>:b         3:w                    
         mov      (8|M0)                 r124.0<1>:f      r53.0<8;8,1>:f         
         mov      (16|M0)                r121.0<1>:f      r60.0<8;8,1>:f         
         mov      (8|M0)                 r125.0<1>:f      r54.0<8;8,1>:f         
         mov      (8|M0)                 r126.0<1>:f      r55.0<8;8,1>:f         
         mov      (16|M0)                r119.0<1>:f      r58.0<8;8,1>:f         
(W)      mov      (1|M0)                 a0.0<1>:ud       r25.0<0;1,0>:ud        
         and      (1|M0)                 r121.20<2>:b     r60.20<0;1,0>:b        3:w                    
         mov      (1|M0)                 r121.21<2>:b     r60.21<0;1,0>:b        
         add      (1|M0)                 r28.5<1>:d       r28.4<0;1,0>:d         r25.4<0;1,0>:w         
         mov      (1|M0)                 r121.22<2>:b     r60.22<0;1,0>:b        
         cmp      (1|M0)     (eq)f1.0    null<1>:uw       r25.28<0;1,0>:ub       0x0:uw                 
         send     (16|M0)                r62:uw           r119:f                 0xD                    a0.0                
(W)      mov      (8|M0)                 r126.0<1>:f      r0.0<8;8,1>:f          
(W)      add      (1|M0)                 a0.0<1>:ud       r6.0<0;1,0>:ud         0x20A8000:ud           
(W)      mov      (1|M0)                 r126.2<1>:f      0x3001F:f              
(W)      mov      (1|M0)                 r126.0<1>:f      r25.1<0;1,0>:f         
(W)      mov      (1|M0)                 r126.1<1>:f      r28.5<0;1,0>:f         
         shl      (32|M0)                r63.0<1>:w       r63.0<8;8,1>:w         r26.0<8;8,1>:w         
         shl      (32|M0)                r65.0<1>:w       r65.0<8;8,1>:w         r26.0<8;8,1>:w         
         cmp      (32|M0)                (lt)f0.0         null<1>:uw             r29.4<0;1,0>:uw        r62.4<0;1,0>:uw     
(f0.0)   sel      (8|M0)                 r69.0<1>:w       r30.0<8;8,1>:w         r63.0<8;8,1>:w         
(f0.0)   sel      (8|M8)                 r70.0<1>:w       r30.8<8;8,1>:w         r63.8<8;8,1>:w         
(f0.0)   sel      (8|M16)                r71.0<1>:w       r32.0<8;8,1>:w         r65.0<8;8,1>:w         
(f0.0)   sel      (8|M24)                r72.0<1>:w       r32.8<8;8,1>:w         r65.8<8;8,1>:w         
(f0.0)   sel      (8|M0)                 r69.8<1>:w       r31.0<8;8,1>:w         r64.0<8;8,1>:w         
(f0.0)   sel      (8|M8)                 r70.8<1>:w       r31.8<8;8,1>:w         r64.8<8;8,1>:w         
(f0.0)   sel      (8|M16)                r71.8<1>:w       r33.0<8;8,1>:w         r66.0<8;8,1>:w         
(f0.0)   sel      (8|M24)                r72.8<1>:w       r33.8<8;8,1>:w         r66.8<8;8,1>:w         
(W)      sends    (8|M0)                 null:ud          r126                   r69                    0x10C               a0.0    
(W&~f1.0)jmpi     L3568       
L3440:
         add      (2|M0)                 r126.0<1>:d      (abs)r69.1<8;1,0>:w    (abs)r69.0<8;1,0>:w    
         add      (2|M0)                 r126.2<1>:d      (abs)r71.1<8;1,0>:w    (abs)r71.0<8;1,0>:w    
(W)      mov      (1|M0)                 r126.8<1>:w      r1.20<0;1,0>:ub        
(W)      mov      (1|M0)                 r125.0<1>:hf     0x1:hf                 
         cmp      (4|M0)                 (lt)f1.1         null<1>:ud             r126.0<4;4,1>:ud       r126.8<0;1,0>:w     
(f1.1)   sel      (4|M0)                 r124.0<1>:uw     r125.0<0;1,0>:w        0:w                    
         add      (2|M0)                 r123.0<1>:d      r124.2<2;2,1>:uw       r124.0<2;2,1>:uw       
         add      (1|M0)                 r73.0<1>:d       r123.0<0;1,0>:d        r123.1<0;1,0>:d        
L3568:
         cmp      (1|M0)     (eq)f1.1    null<1>:d        r7.4<0;1,0>:d          0:w                    
(W&f1.1) jmpi     L4208       
L3600:
         mov      (32|M0)                r125.0<1>:w      r67.0<8;8,1>:ub        
(f0.0)   sel      (32|M0)                r74.0<1>:w       r34.0<8;8,1>:ub        r125.0<8;8,1>:w        
         mov      (32|M0)                r76.0<1>:ub      r74.0<2;1,0>:ub        
(W&~f1.0)jmpi     L3952       
L3664:
         mov      (16|M0)                r125.0<1>:ub     r74.0<2;1,0>:ub        
         mov      (16|M0)                r124.0<1>:ub     r75.0<2;1,0>:ub        
         add      (8|M0)                 r123.0<1>:d      r124.0<8;8,1>:uw       r125.0<8;8,1>:uw       
(W)      mov      (8|M0)                 r126.0<1>:f      r0.0<8;8,1>:f          
         add      (4|M0)                 r122.0<1>:d      r123.4<4;4,1>:d        r123.0<4;4,1>:d        
(W)      add      (1|M0)                 a0.0<1>:ud       r6.3<0;1,0>:ud         0x20A8000:ud           
         cmp      (1|M0)     (eq)f0.0    null<1>:d        r7.3<0;1,0>:d          0:w                    
(W)      mov      (1|M0)                 r126.2<1>:f      0x30007:f              
(W)      mov      (1|M0)                 r126.0<1>:f      r25.6<0;1,0>:f         
(W)      mov      (1|M0)                 r126.1<1>:f      r25.3<0;1,0>:f         
         add      (2|M0)                 r121.0<1>:d      r122.2<2;2,1>:d        r122.0<2;2,1>:d        
(W)      sends    (8|M0)                 null:ud          r126                   r76                    0x4C                a0.0    
         add      (1|M0)                 r73.1<1>:d       r121.0<0;1,0>:d        r121.1<0;1,0>:d        
(W&f0.0) jmpi     L3952       
L3888:
         mov      (8|M0)                 r126.0<1>:w      0x77777710:v           
(W)      add      (1|M0)                 a0.0<1>:ud       r7.0<0;1,0>:ud         0x210B700:ud           
         mul      (8|M0)                 r125.0<1>:d      r126.0<8;8,1>:w        4:w                    
         sends    (8|M0)                 r124:ud          r125                   r73                    0x4C                a0.0    
L3952:
         mov      (2|M0)                 r76.10<1>:ub     r74.16<2;1,0>:ub       
         mov      (2|M0)                 r76.26<1>:ub     r75.16<2;1,0>:ub       
         mov      (2|M0)                 r76.2<1>:ub      r74.0<2;1,0>:ub        
         mov      (2|M0)                 r76.18<1>:ub     r75.0<2;1,0>:ub        
         mov      (2|M0)                 r76.6<1>:hf      r76.4<2;2,1>:hf        
(W)      mov      (8|M0)                 r126.0<1>:f      r0.0<8;8,1>:f          
         mov      (2|M0)                 r76.14<1>:hf     r76.12<2;2,1>:hf       
(W)      add      (1|M0)                 a0.0<1>:ud       r6.2<0;1,0>:ud         0x20A8000:ud           
         mov      (2|M0)                 r76.4<1>:hf      r76.0<2;2,1>:hf        
(W)      mov      (1|M0)                 r126.2<1>:f      0x30007:f              
         mov      (2|M0)                 r76.2<1>:hf      r76.6<2;2,1>:hf        
(W)      mov      (1|M0)                 r126.0<1>:f      r25.6<0;1,0>:f         
         mov      (2|M0)                 r76.12<1>:hf     r76.8<2;2,1>:hf        
(W)      mov      (1|M0)                 r126.1<1>:f      r28.5<0;1,0>:f         
         mov      (2|M0)                 r76.10<1>:hf     r76.14<2;2,1>:hf       
(W)      sends    (8|M0)                 null:ud          r126                   r76                    0x4C                a0.0    
L4208:
         add      (1|M0)                 r25.28<2>:b      r25.28<0;1,0>:b        1:w                    
(W)      mov      (1|M0)                 r125.0<1>:w      r2.20<0;1,0>:ub        
(W)      mov      (1|M0)                 r126.0<1>:w      r7.20<0;1,0>:ub        
         cmp      (1|M0)                 (gt)f0.0         null<1>:w              r25.28<0;1,0>:ub       r125.0<0;1,0>:w     
         mov      (1|M0)                 r36.0<1>:d       r25.28<0;1,0>:ub       
         mad      (1|M0)                 r28.4<1>:d       r28.4<0;0>:d           r126.0<0;0>:w          4:w                 
(W&~f0.0)jmpi     L1136       
L4320:
(W)      mov      (8|M0)                 r127.0<1>:f      r0.0<8;8,1>:f          
(W)      send     (8|M0)                 null             r127:f                 0x27                   0x2000010           {EOT}
