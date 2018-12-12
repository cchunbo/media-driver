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
 
DS_L0:
(W)      shr      (1|M0)                  r2.4<2>:uw       r0.1<0;1,0>:ud       0xC:uw               
(W)      and      (1|M0)                  r1.2<2>:uw       r0.1<0;1,0>:ud       0xFFF:uw             
         shr      (1|M0)                  r5.0<1>:uw       r1.1<0;1,0>:uw       0x1:uw               
(W)      mov      (1|M0)                  r1.3<1>:hf       r2.4<0;1,0>:hf       
         add      (1|M0)                  r6.0<1>:w        r5.0<0;1,0>:w        -1:w                 
(W)      and      (1|M0)                  r1.3<1>:uw       r1.3<0;1,0>:uw       0xFFF:uw             
(W)      mov      (8|M0)                  r8.0<1>:f        r0.0<8;8,1>:f        
         shl      (2|M0)                  r3.0<1>:w        r1.2<2;2,1>:w        4:w                  
(W)      add      (1|M0)                  a0.0<1>:ud       r2.0<0;1,0>:ud       0x2890000:ud         
         add      (1|M0)                  r4.0<1>:w        r3.1<0;1,0>:w        16:w                 
         mov      (1|M0)                  r116.0<1>:d      r3.1<0;1,0>:uw       
         cmp      (1|M0)                  (gt)f0.0         null<1>:uw           r4.0<0;1,0>:uw       r5.0<0;1,0>:uw    
         add      (1|M0)                  r116.2<1>:w      r4.0<0;1,0>:w        -r5.0<0;1,0>:w       
(~f0.0)  mov      (1|M0)                  r116.2<1>:hf     0x0:hf               
         cmp      (1|M0)                  (ge)f0.0         null<1>:d            r116.0<0;1,0>:d      r5.0<0;1,0>:uw    
         mov      (1|M0)                  r116.2<1>:d      r3.0<0;1,0>:uw       
(~f0.0)  mov      (1|M0)                  r6.0<1>:hf       r3.1<0;1,0>:hf       
(W)      mov      (1|M0)                  r8.2<1>:f        0x7001F:f            
         shl      (1|M0)                  r7.0<1>:d        r6.0<0;1,0>:uw       1:w                  
         shl      (1|M0)                  r8.0<1>:d        r116.2<0;1,0>:d      1:w                  
(W)      mov      (1|M0)                  r8.1<1>:f        r7.0<0;1,0>:f        
(f0.0)   mov      (1|M0)                  r116.2<1>:hf     0xF:hf               
(W)      send     (8|M0)                  r9               r8:f                 0xC                  a0.0              
         add      (1|M0)                  r8.1<1>:d        r7.0<0;1,0>:d        8:w                  
         cmp      (1|M0)      (eq)f0.0    null<1>:w        r116.2<0;1,0>:w      0:w                  
(W)      send     (8|M0)                  r17              r8:f                 0xC                  a0.0              
         add      (1|M0)                  r8.1<1>:d        r7.0<0;1,0>:d        16:w                 
(W)      send     (8|M0)                  r25              r8:f                 0xC                  a0.0              
         add      (1|M0)                  r8.1<1>:d        r7.0<0;1,0>:d        24:w                 
(W)      send     (8|M0)                  r33              r8:f                 0xC                  a0.0              
         mov      (16|M0)                 r41.0<1>:w       r9.0<8;8,1>:ub       
         mov      (16|M0)                 r45.0<1>:w       r13.0<8;8,1>:ub      
         mov      (16|M0)                 r65.0<1>:w       r9.16<8;8,1>:ub      
         mov      (16|M0)                 r69.0<1>:w       r13.16<8;8,1>:ub     
         mov      (16|M0)                 r43.0<1>:w       r11.0<8;8,1>:ub      
         mov      (16|M0)                 r67.0<1>:w       r11.16<8;8,1>:ub     
         add      (16|M0)                 r42.0<1>:w       r10.0<8;8,1>:ub      r41.0<16;16,1>:w     
         add      (16|M0)                 r46.0<1>:w       r14.0<8;8,1>:ub      r45.0<16;16,1>:w     
         add      (16|M0)                 r66.0<1>:w       r10.16<8;8,1>:ub     r65.0<16;16,1>:w     
         add      (16|M0)                 r70.0<1>:w       r14.16<8;8,1>:ub     r69.0<16;16,1>:w     
         mov      (16|M0)                 r47.0<1>:w       r15.0<8;8,1>:ub      
         mov      (16|M0)                 r71.0<1>:w       r15.16<8;8,1>:ub     
         mov      (16|M0)                 r49.0<1>:w       r17.0<8;8,1>:ub      
         mov      (16|M0)                 r51.0<1>:w       r19.0<8;8,1>:ub      
         mov      (16|M0)                 r53.0<1>:w       r21.0<8;8,1>:ub      
         mov      (16|M0)                 r55.0<1>:w       r23.0<8;8,1>:ub      
         mov      (16|M0)                 r73.0<1>:w       r17.16<8;8,1>:ub     
         mov      (16|M0)                 r75.0<1>:w       r19.16<8;8,1>:ub     
         mov      (16|M0)                 r77.0<1>:w       r21.16<8;8,1>:ub     
         mov      (16|M0)                 r79.0<1>:w       r23.16<8;8,1>:ub     
         mov      (16|M0)                 r89.0<1>:w       r25.0<8;8,1>:ub      
         mov      (16|M0)                 r91.0<1>:w       r27.0<8;8,1>:ub      
         mov      (16|M0)                 r93.0<1>:w       r29.0<8;8,1>:ub      
         mov      (16|M0)                 r95.0<1>:w       r31.0<8;8,1>:ub      
         mov      (16|M0)                 r113.0<1>:w      r25.16<8;8,1>:ub     
         mov      (16|M0)                 r1.0<1>:w        r27.16<8;8,1>:ub     
         mov      (16|M0)                 r3.0<1>:w        r29.16<8;8,1>:ub     
         mov      (16|M0)                 r6.0<1>:w        r31.16<8;8,1>:ub     
         mov      (16|M0)                 r97.0<1>:w       r33.0<8;8,1>:ub      
         mov      (16|M0)                 r99.0<1>:w       r35.0<8;8,1>:ub      
         mov      (16|M0)                 r101.0<1>:w      r37.0<8;8,1>:ub      
         mov      (16|M0)                 r103.0<1>:w      r39.0<8;8,1>:ub      
         mov      (16|M0)                 r7.0<1>:w        r33.16<8;8,1>:ub     
         mov      (16|M0)                 r11.0<1>:w       r37.16<8;8,1>:ub     
         mov      (16|M0)                 r10.0<1>:w       r35.16<8;8,1>:ub     
         mov      (16|M0)                 r14.0<1>:w       r39.16<8;8,1>:ub     
         add      (16|M0)                 r44.0<1>:w       r12.0<8;8,1>:ub      r43.0<16;16,1>:w     
         add      (16|M0)                 r68.0<1>:w       r12.16<8;8,1>:ub     r67.0<16;16,1>:w     
         add      (16|M0)                 r48.0<1>:w       r16.0<8;8,1>:ub      r47.0<16;16,1>:w     
         add      (16|M0)                 r72.0<1>:w       r16.16<8;8,1>:ub     r71.0<16;16,1>:w     
         add      (16|M0)                 r50.0<1>:w       r18.0<8;8,1>:ub      r49.0<16;16,1>:w     
         add      (16|M0)                 r52.0<1>:w       r20.0<8;8,1>:ub      r51.0<16;16,1>:w     
         add      (16|M0)                 r54.0<1>:w       r22.0<8;8,1>:ub      r53.0<16;16,1>:w     
         add      (16|M0)                 r56.0<1>:w       r24.0<8;8,1>:ub      r55.0<16;16,1>:w     
         add      (16|M0)                 r74.0<1>:w       r18.16<8;8,1>:ub     r73.0<16;16,1>:w     
         add      (16|M0)                 r76.0<1>:w       r20.16<8;8,1>:ub     r75.0<16;16,1>:w     
         add      (16|M0)                 r78.0<1>:w       r22.16<8;8,1>:ub     r77.0<16;16,1>:w     
         add      (16|M0)                 r80.0<1>:w       r24.16<8;8,1>:ub     r79.0<16;16,1>:w     
         add      (16|M0)                 r90.0<1>:w       r26.0<8;8,1>:ub      r89.0<16;16,1>:w     
         add      (16|M0)                 r92.0<1>:w       r28.0<8;8,1>:ub      r91.0<16;16,1>:w     
         add      (16|M0)                 r94.0<1>:w       r30.0<8;8,1>:ub      r93.0<16;16,1>:w     
         add      (16|M0)                 r96.0<1>:w       r32.0<8;8,1>:ub      r95.0<16;16,1>:w     
         add      (16|M0)                 r114.0<1>:w      r26.16<8;8,1>:ub     r113.0<16;16,1>:w    
         add      (16|M0)                 r115.0<1>:w      r28.16<8;8,1>:ub     r1.0<16;16,1>:w      
         add      (16|M0)                 r4.0<1>:w        r30.16<8;8,1>:ub     r3.0<16;16,1>:w      
         add      (16|M0)                 r5.0<1>:w        r32.16<8;8,1>:ub     r6.0<16;16,1>:w      
         add      (16|M0)                 r98.0<1>:w       r34.0<8;8,1>:ub      r97.0<16;16,1>:w     
         add      (16|M0)                 r100.0<1>:w      r36.0<8;8,1>:ub      r99.0<16;16,1>:w     
         add      (16|M0)                 r102.0<1>:w      r38.0<8;8,1>:ub      r101.0<16;16,1>:w    
         add      (16|M0)                 r104.0<1>:w      r40.0<8;8,1>:ub      r103.0<16;16,1>:w    
         add      (16|M0)                 r8.0<1>:w        r34.16<8;8,1>:ub     r7.0<16;16,1>:w      
         add      (16|M0)                 r9.0<1>:w        r36.16<8;8,1>:ub     r10.0<16;16,1>:w     
         add      (16|M0)                 r13.0<1>:w       r40.16<8;8,1>:ub     r14.0<16;16,1>:w     
         add      (16|M0)                 r12.0<1>:w       r38.16<8;8,1>:ub     r11.0<16;16,1>:w     
         add      (8|M0)                  r57.0<1>:w       r42.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r58.0<1>:w       r46.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r81.0<1>:w       r66.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r82.0<1>:w       r70.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r57.8<1>:w       r44.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r81.8<1>:w       r68.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r58.8<1>:w       r48.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r82.8<1>:w       r72.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r59.0<1>:w       r50.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r60.0<1>:w       r54.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r59.8<1>:w       r52.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r60.8<1>:w       r56.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r83.0<1>:w       r74.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r84.0<1>:w       r78.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r83.8<1>:w       r76.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r84.8<1>:w       r80.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r105.0<1>:w      r90.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r106.0<1>:w      r94.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r105.8<1>:w      r92.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r106.8<1>:w      r96.0<2;1,0>:w       2:w                  
         add      (16|M0)                 r15.0<1>:w       r114.0<2;1,0>:w      2:w                  
         add      (16|M0)                 r16.0<1>:w       r4.0<2;1,0>:w        2:w                  
         add      (8|M0)                  r107.0<1>:w      r98.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r108.0<1>:w      r102.0<2;1,0>:w      2:w                  
         add      (8|M0)                  r107.8<1>:w      r100.0<2;1,0>:w      2:w                  
         add      (8|M0)                  r108.8<1>:w      r104.0<2;1,0>:w      2:w                  
         add      (16|M0)                 r17.0<1>:w       r8.0<2;1,0>:w        2:w                  
         add      (16|M0)                 r18.0<1>:w       r12.0<2;1,0>:w       2:w                  
         add      (8|M0)                  r61.0<1>:w       r57.0<8;8,1>:w       r42.1<2;1,0>:w       
         add      (8|M0)                  r62.0<1>:w       r58.0<8;8,1>:w       r46.1<2;1,0>:w       
         add      (8|M0)                  r85.0<1>:w       r81.0<8;8,1>:w       r66.1<2;1,0>:w       
         add      (8|M0)                  r86.0<1>:w       r82.0<8;8,1>:w       r70.1<2;1,0>:w       
         add      (8|M0)                  r61.8<1>:w       r57.8<8;8,1>:w       r44.1<2;1,0>:w       
         add      (8|M0)                  r85.8<1>:w       r81.8<8;8,1>:w       r68.1<2;1,0>:w       
         add      (8|M0)                  r62.8<1>:w       r58.8<8;8,1>:w       r48.1<2;1,0>:w       
         add      (8|M0)                  r86.8<1>:w       r82.8<8;8,1>:w       r72.1<2;1,0>:w       
         add      (8|M0)                  r63.0<1>:w       r59.0<8;8,1>:w       r50.1<2;1,0>:w       
         add      (8|M0)                  r64.0<1>:w       r60.0<8;8,1>:w       r54.1<2;1,0>:w       
         add      (8|M0)                  r63.8<1>:w       r59.8<8;8,1>:w       r52.1<2;1,0>:w       
         add      (8|M0)                  r64.8<1>:w       r60.8<8;8,1>:w       r56.1<2;1,0>:w       
         add      (8|M0)                  r87.0<1>:w       r83.0<8;8,1>:w       r74.1<2;1,0>:w       
         add      (8|M0)                  r88.0<1>:w       r84.0<8;8,1>:w       r78.1<2;1,0>:w       
         add      (8|M0)                  r87.8<1>:w       r83.8<8;8,1>:w       r76.1<2;1,0>:w       
         add      (8|M0)                  r88.8<1>:w       r84.8<8;8,1>:w       r80.1<2;1,0>:w       
         add      (8|M0)                  r109.0<1>:w      r105.0<8;8,1>:w      r90.1<2;1,0>:w       
         add      (8|M0)                  r110.0<1>:w      r106.0<8;8,1>:w      r94.1<2;1,0>:w       
         add      (8|M0)                  r109.8<1>:w      r105.8<8;8,1>:w      r92.1<2;1,0>:w       
         add      (8|M0)                  r110.8<1>:w      r106.8<8;8,1>:w      r96.1<2;1,0>:w       
         add      (16|M0)                 r19.0<1>:w       r15.0<16;16,1>:w     r114.1<2;1,0>:w      
         add      (16|M0)                 r20.0<1>:w       r16.0<16;16,1>:w     r4.1<2;1,0>:w        
         add      (8|M0)                  r111.0<1>:w      r107.0<8;8,1>:w      r98.1<2;1,0>:w       
         add      (8|M0)                  r112.0<1>:w      r108.0<8;8,1>:w      r102.1<2;1,0>:w      
         add      (8|M0)                  r111.8<1>:w      r107.8<8;8,1>:w      r100.1<2;1,0>:w      
         add      (8|M0)                  r112.8<1>:w      r108.8<8;8,1>:w      r104.1<2;1,0>:w      
         add      (16|M0)                 r21.0<1>:w       r17.0<16;16,1>:w     r8.1<2;1,0>:w        
         add      (16|M0)                 r22.0<1>:w       r18.0<16;16,1>:w     r12.1<2;1,0>:w       
         shr      (32|M0)                 r61.0<1>:uw      r61.0<8;8,1>:uw      0x2:uw               
         shr      (32|M0)                 r85.0<1>:uw      r85.0<8;8,1>:uw      0x2:uw               
         shr      (32|M0)                 r63.0<1>:uw      r63.0<8;8,1>:uw      0x2:uw               
         shr      (32|M0)                 r87.0<1>:uw      r87.0<8;8,1>:uw      0x2:uw               
         shr      (32|M0)                 r109.0<1>:uw     r109.0<8;8,1>:uw     0x2:uw               
         shr      (32|M0)                 r19.0<1>:uw      r19.0<8;8,1>:uw      0x2:uw               
         shr      (32|M0)                 r111.0<1>:uw     r111.0<8;8,1>:uw     0x2:uw               
         shr      (32|M0)                 r21.0<1>:uw      r21.0<8;8,1>:uw      0x2:uw               
         mov      (8|M0)                  r117.0<1>:ub     r61.0<2;1,0>:ub      
         mov      (8|M0)                  r118.0<1>:ub     r62.0<2;1,0>:ub      
         mov      (8|M0)                  r117.16<1>:ub    r61.16<2;1,0>:ub     
         mov      (8|M0)                  r118.16<1>:ub    r62.16<2;1,0>:ub     
         mov      (8|M0)                  r117.8<1>:ub     r85.0<2;1,0>:ub      
         mov      (8|M0)                  r118.8<1>:ub     r86.0<2;1,0>:ub      
         mov      (8|M0)                  r117.24<1>:ub    r85.16<2;1,0>:ub     
         mov      (8|M0)                  r118.24<1>:ub    r86.16<2;1,0>:ub     
         mov      (8|M0)                  r119.0<1>:ub     r63.0<2;1,0>:ub      
         mov      (8|M0)                  r120.0<1>:ub     r64.0<2;1,0>:ub      
         mov      (8|M0)                  r119.16<1>:ub    r63.16<2;1,0>:ub     
         mov      (8|M0)                  r120.16<1>:ub    r64.16<2;1,0>:ub     
         mov      (8|M0)                  r119.8<1>:ub     r87.0<2;1,0>:ub      
         mov      (8|M0)                  r120.8<1>:ub     r88.0<2;1,0>:ub      
         mov      (8|M0)                  r119.24<1>:ub    r87.16<2;1,0>:ub     
         mov      (8|M0)                  r120.24<1>:ub    r88.16<2;1,0>:ub     
         mov      (8|M0)                  r121.0<1>:ub     r109.0<2;1,0>:ub     
         mov      (8|M0)                  r122.0<1>:ub     r110.0<2;1,0>:ub     
         mov      (8|M0)                  r121.16<1>:ub    r109.16<2;1,0>:ub    
         mov      (8|M0)                  r122.16<1>:ub    r110.16<2;1,0>:ub    
         mov      (8|M0)                  r121.8<1>:ub     r19.0<2;1,0>:ub      
         mov      (8|M0)                  r122.8<1>:ub     r20.0<2;1,0>:ub      
         mov      (8|M0)                  r121.24<1>:ub    r19.16<2;1,0>:ub     
         mov      (8|M0)                  r122.24<1>:ub    r20.16<2;1,0>:ub     
         mov      (8|M0)                  r123.0<1>:ub     r111.0<2;1,0>:ub     
         mov      (8|M0)                  r124.0<1>:ub     r112.0<2;1,0>:ub     
         mov      (8|M0)                  r123.16<1>:ub    r111.16<2;1,0>:ub    
         mov      (8|M0)                  r124.16<1>:ub    r112.16<2;1,0>:ub    
         mov      (8|M0)                  r123.8<1>:ub     r21.0<2;1,0>:ub      
         mov      (8|M0)                  r124.8<1>:ub     r22.0<2;1,0>:ub      
         mov      (8|M0)                  r123.24<1>:ub    r21.16<2;1,0>:ub     
         mov      (8|M0)                  r124.24<1>:ub    r22.16<2;1,0>:ub     
(W&f0.0) jmpi     DS_L4192    
DS_L3056:
         add      (1|M0)                  r1.0<1>:d        -r116.2<0;1,0>:uw    15:w                 
         shl      (1|M0)                  r2.0<1>:w        r1.0<0;1,0>:w        4:w                  
         add      (1|M0)                  a0.0<1>:uw       r2.0<0;1,0>:uw       0xEA0:uw             
         mov      (16|M0)                 r3.0<1>:ub       r[a0.0]<1;1,0>:ub    
         cmp      (16|M0)     (eq)f0.0    null<1>:d        r1.0<0;1,0>:d        0:w                  
         mov      (16|M0)                 r4.0<1>:w        r117.16<8;8,1>:ub    
(f0.0)   sel      (16|M0)                 r5.0<1>:w        r[a0.0]<1;1,0>:ub    r4.0<16;16,1>:w      
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x2:uw            
         mov      (16|M0)                 r6.0<1>:w        r118.0<8;8,1>:ub     
(f0.0)   sel      (16|M0)                 r7.0<1>:w        r3.0<8;8,1>:ub       r6.0<16;16,1>:w      
         mov      (16|M0)                 r8.0<1>:w        r118.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x3:uw            
(f0.0)   sel      (16|M0)                 r9.0<1>:w        r3.0<8;8,1>:ub       r8.0<16;16,1>:w      
         mov      (16|M0)                 r10.0<1>:w       r119.0<8;8,1>:ub     
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x4:uw            
(f0.0)   sel      (16|M0)                 r11.0<1>:w       r3.0<8;8,1>:ub       r10.0<16;16,1>:w     
         mov      (16|M0)                 r12.0<1>:w       r119.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x5:uw            
(f0.0)   sel      (16|M0)                 r13.0<1>:w       r3.0<8;8,1>:ub       r12.0<16;16,1>:w     
         mov      (16|M0)                 r14.0<1>:w       r120.0<8;8,1>:ub     
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x6:uw            
(f0.0)   sel      (16|M0)                 r15.0<1>:w       r3.0<8;8,1>:ub       r14.0<16;16,1>:w     
         mov      (16|M0)                 r16.0<1>:w       r120.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x7:uw            
(f0.0)   sel      (16|M0)                 r17.0<1>:w       r3.0<8;8,1>:ub       r16.0<16;16,1>:w     
         mov      (16|M0)                 r18.0<1>:w       r121.0<8;8,1>:ub     
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x8:uw            
(f0.0)   sel      (16|M0)                 r19.0<1>:w       r3.0<8;8,1>:ub       r18.0<16;16,1>:w     
         mov      (16|M0)                 r20.0<1>:w       r121.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0x9:uw            
(f0.0)   sel      (16|M0)                 r21.0<1>:w       r3.0<8;8,1>:ub       r20.0<16;16,1>:w     
         mov      (16|M0)                 r22.0<1>:w       r122.0<8;8,1>:ub     
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0xA:uw            
(f0.0)   sel      (16|M0)                 r23.0<1>:w       r3.0<8;8,1>:ub       r22.0<16;16,1>:w     
         mov      (16|M0)                 r24.0<1>:w       r122.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0xB:uw            
(f0.0)   sel      (16|M0)                 r25.0<1>:w       r3.0<8;8,1>:ub       r24.0<16;16,1>:w     
         mov      (16|M0)                 r26.0<1>:w       r123.0<8;8,1>:ub     
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0xC:uw            
(f0.0)   sel      (16|M0)                 r27.0<1>:w       r3.0<8;8,1>:ub       r26.0<16;16,1>:w     
         mov      (16|M0)                 r28.0<1>:w       r123.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0xD:uw            
(f0.0)   sel      (16|M0)                 r29.0<1>:w       r3.0<8;8,1>:ub       r28.0<16;16,1>:w     
         mov      (16|M0)                 r30.0<1>:w       r124.0<8;8,1>:ub     
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0xE:uw            
(f0.0)   sel      (16|M0)                 r31.0<1>:w       r3.0<8;8,1>:ub       r30.0<16;16,1>:w     
         mov      (16|M0)                 r32.0<1>:w       r124.16<8;8,1>:ub    
         cmp      (16|M0)                 (lt)f0.0         null<1>:d            r1.0<0;1,0>:ud       0xF:uw            
(f0.0)   sel      (16|M0)                 r33.0<1>:w       r3.0<8;8,1>:ub       r32.0<16;16,1>:w     
         mov      (16|M0)                 r117.16<1>:ub    r5.0<2;1,0>:ub       
(W)      mov      (8|M0)                  r34.0<1>:f       r0.0<8;8,1>:f        
(W)      add      (1|M0)                  a0.0<1>:ud       r2.1<0;1,0>:ud       0x20A8000:ud         
         mov      (16|M0)                 r118.0<1>:ub     r7.0<2;1,0>:ub       
         mov      (16|M0)                 r119.0<1>:ub     r11.0<2;1,0>:ub      
         mov      (16|M0)                 r118.16<1>:ub    r9.0<2;1,0>:ub       
         mov      (16|M0)                 r119.16<1>:ub    r13.0<2;1,0>:ub      
         mov      (16|M0)                 r120.0<1>:ub     r15.0<2;1,0>:ub      
         mov      (16|M0)                 r121.0<1>:ub     r19.0<2;1,0>:ub      
         mov      (16|M0)                 r120.16<1>:ub    r17.0<2;1,0>:ub      
         mov      (16|M0)                 r121.16<1>:ub    r21.0<2;1,0>:ub      
         mov      (16|M0)                 r122.0<1>:ub     r23.0<2;1,0>:ub      
         mov      (16|M0)                 r123.0<1>:ub     r27.0<2;1,0>:ub      
         mov      (16|M0)                 r122.16<1>:ub    r25.0<2;1,0>:ub      
         mov      (16|M0)                 r123.16<1>:ub    r29.0<2;1,0>:ub      
         mov      (16|M0)                 r124.0<1>:ub     r31.0<2;1,0>:ub      
(W)      mov      (1|M0)                  r34.2<1>:f       0xF000F:f            
         mov      (16|M0)                 r124.16<1>:ub    r33.0<2;1,0>:ub      
(W)      mov      (1|M0)                  r34.0<1>:f       r116.2<0;1,0>:f      
(W)      mov      (1|M0)                  r34.1<1>:f       r116.0<0;1,0>:f      
(W)      sends    (8|M0)                  null:ud          r34                  r117                 0x20C             a0.0    
(W)      jmpi     DS_L4288    
DS_L4192:
(W)      mov      (8|M0)                  r1.0<1>:f        r0.0<8;8,1>:f        
(W)      add      (1|M0)                  a0.0<1>:ud       r2.1<0;1,0>:ud       0x20A8000:ud         
(W)      mov      (1|M0)                  r1.2<1>:f        0xF000F:f            
(W)      mov      (1|M0)                  r1.0<1>:f        r116.2<0;1,0>:f      
(W)      mov      (1|M0)                  r1.1<1>:f        r116.0<0;1,0>:f      
(W)      sends    (8|M0)                  null:ud          r1                   r117                 0x20C             a0.0    
DS_L4288:
(W)      mov      (8|M0)                  r127.0<1>:f      r0.0<8;8,1>:f        
(W)      send     (8|M0)                  null             r127:f               0x27                 0x2000010         {EOT}