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
(W)      shr      (1|M0)                  r2.8<2>:uw       r0.1<0;1,0>:ud          0xC:uw              
         shr      (1|M0)                  r6.0<1>:uw       r1.1<0;1,0>:uw          0x2:uw              
(W)      and      (1|M0)                  r2.8<1>:uw       r2.8<0;1,0>:uw          0xFFF:uw            
(W)      and      (1|M0)                  r1.0<2>:uw       r0.1<0;1,0>:ud          0xFFF:uw            
         shl      (1|M0)                  r4.0<1>:w        r2.8<0;1,0>:w           3:w                 
         add      (1|M0)                  r7.0<1>:w        r6.0<0;1,0>:w           -1:w                
         add      (1|M0)                  r5.0<1>:w        r4.0<0;1,0>:w           8:w                 
         mov      (1|M0)                  r83.0<1>:d       r4.0<0;1,0>:uw          
         cmp      (1|M0)                  (gt)f0.0         null<1>:uw              r5.0<0;1,0>:uw      r6.0<0;1,0>:uw    
         add      (1|M0)                  r83.2<1>:w       r5.0<0;1,0>:w           -r6.0<0;1,0>:w      
         shl      (1|M0)                  r3.0<1>:w        r1.0<0;1,0>:w           4:w                 
(~f0.0)  mov      (1|M0)                  r83.2<1>:hf      0x0:hf                  
         cmp      (1|M0)                  (ge)f0.0         null<1>:d               r83.0<0;1,0>:d      r6.0<0;1,0>:uw    
         mov      (1|M0)                  r83.2<1>:d       r3.0<0;1,0>:uw          
(~f0.0)  mov      (1|M0)                  r7.0<1>:hf       r4.0<0;1,0>:hf          
(W)      mov      (8|M0)                  r9.0<1>:f        r0.0<8;8,1>:f           
         shl      (1|M0)                  r8.0<1>:d        r7.0<0;1,0>:uw          1:w                 
(W)      add      (1|M0)                  a0.0<1>:ud       r2.0<0;1,0>:ud          0x2890000:ud        
         shl      (1|M0)                  r9.0<1>:d        r83.2<0;1,0>:d          1:w                 
(W)      mov      (1|M0)                  r9.2<1>:f        0x7001F:f               
         add      (1|M0)                  r18.0<1>:d       r8.0<0;1,0>:d           8:w                 
(W)      mov      (1|M0)                  r9.1<1>:f        r8.0<0;1,0>:f           
(f0.0)   mov      (1|M0)                  r83.2<1>:hf      0x7:hf                  
(W)      send     (8|M0)                  r10              r9:f                    0xC                 a0.0              
(W)      mov      (1|M0)                  r9.1<1>:f        r18.0<0;1,0>:f          
         cmp      (1|M0)      (eq)f0.0    null<1>:w        r83.2<0;1,0>:w          0:w                 
(W)      send     (8|M0)                  r19              r9:f                    0xC                 a0.0              
(W)      mov      (1|M0)                  r9.1<1>:f        r8.0<0;1,0>:f           
(W)      add      (1|M0)                  a0.0<1>:ud       r2.2<0;1,0>:ud          0x2890000:ud        
(W)      send     (8|M0)                  r27              r9:f                    0xC                 a0.0              
(W)      mov      (1|M0)                  r9.1<1>:f        r18.0<0;1,0>:f          
(W)      send     (8|M0)                  r35              r9:f                    0xC                 a0.0              
         mov      (32|M0)                 r43.0<1>:w       r10.0<8;8,1>:ub         
         mov      (32|M0)                 r47.0<1>:w       r12.0<8;8,1>:ub         
         mov      (32|M0)                 r51.0<1>:w       r14.0<8;8,1>:ub         
         mov      (32|M0)                 r55.0<1>:w       r16.0<8;8,1>:ub         
         mov      (32|M0)                 r59.0<1>:w       r19.0<8;8,1>:ub         
         mov      (32|M0)                 r63.0<1>:w       r21.0<8;8,1>:ub         
         mov      (32|M0)                 r67.0<1>:w       r23.0<8;8,1>:ub         
         mov      (32|M0)                 r71.0<1>:w       r25.0<8;8,1>:ub         
         add      (32|M0)                 r45.0<1>:w       r11.0<8;8,1>:ub         r43.0<8;8,1>:w      
         add      (32|M0)                 r49.0<1>:w       r13.0<8;8,1>:ub         r47.0<8;8,1>:w      
         add      (32|M0)                 r53.0<1>:w       r15.0<8;8,1>:ub         r51.0<8;8,1>:w      
         add      (32|M0)                 r57.0<1>:w       r17.0<8;8,1>:ub         r55.0<8;8,1>:w      
         add      (32|M0)                 r61.0<1>:w       r20.0<8;8,1>:ub         r59.0<8;8,1>:w      
         add      (32|M0)                 r65.0<1>:w       r22.0<8;8,1>:ub         r63.0<8;8,1>:w      
         add      (32|M0)                 r69.0<1>:w       r24.0<8;8,1>:ub         r67.0<8;8,1>:w      
         mov      (32|M0)                 r43.0<1>:w       r31.0<8;8,1>:ub         
         mov      (32|M0)                 r47.0<1>:w       r33.0<8;8,1>:ub         
         mov      (32|M0)                 r51.0<1>:w       r35.0<8;8,1>:ub         
         mov      (32|M0)                 r55.0<1>:w       r37.0<8;8,1>:ub         
         mov      (32|M0)                 r19.0<1>:w       r27.0<8;8,1>:ub         
         mov      (32|M0)                 r59.0<1>:w       r39.0<8;8,1>:ub         
         mov      (32|M0)                 r63.0<1>:w       r41.0<8;8,1>:ub         
         mov      (32|M0)                 r23.0<1>:w       r29.0<8;8,1>:ub         
         add      (32|M0)                 r73.0<1>:w       r26.0<8;8,1>:ub         r71.0<8;8,1>:w      
         add      (16|M0)                 r75.0<1>:w       r45.1<2;1,0>:w          r45.0<2;1,0>:w      
         add      (16|M0)                 r76.0<1>:w       r49.1<2;1,0>:w          r49.0<2;1,0>:w      
         add      (16|M0)                 r77.0<1>:w       r53.1<2;1,0>:w          r53.0<2;1,0>:w      
         add      (16|M0)                 r78.0<1>:w       r57.1<2;1,0>:w          r57.0<2;1,0>:w      
         add      (16|M0)                 r79.0<1>:w       r61.1<2;1,0>:w          r61.0<2;1,0>:w      
         add      (16|M0)                 r80.0<1>:w       r65.1<2;1,0>:w          r65.0<2;1,0>:w      
         add      (32|M0)                 r21.0<1>:w       r28.0<8;8,1>:ub         r19.0<8;8,1>:w      
         add      (32|M0)                 r25.0<1>:w       r30.0<8;8,1>:ub         r23.0<8;8,1>:w      
         add      (32|M0)                 r45.0<1>:w       r32.0<8;8,1>:ub         r43.0<8;8,1>:w      
         add      (32|M0)                 r49.0<1>:w       r34.0<8;8,1>:ub         r47.0<8;8,1>:w      
         add      (32|M0)                 r53.0<1>:w       r36.0<8;8,1>:ub         r51.0<8;8,1>:w      
         add      (32|M0)                 r57.0<1>:w       r38.0<8;8,1>:ub         r55.0<8;8,1>:w      
         add      (32|M0)                 r61.0<1>:w       r40.0<8;8,1>:ub         r59.0<8;8,1>:w      
         add      (32|M0)                 r65.0<1>:w       r42.0<8;8,1>:ub         r63.0<8;8,1>:w      
         add      (16|M0)                 r81.0<1>:w       r69.1<2;1,0>:w          r69.0<2;1,0>:w      
         add      (16|M0)                 r82.0<1>:w       r73.1<2;1,0>:w          r73.0<2;1,0>:w      
         add      (16|M0)                 r3.0<1>:d        r75.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r5.0<1>:d        r76.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r7.0<1>:d        r77.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r9.0<1>:d        r78.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r67.0<1>:w       r21.1<2;1,0>:w          r21.0<2;1,0>:w      
         add      (16|M0)                 r68.0<1>:w       r25.1<2;1,0>:w          r25.0<2;1,0>:w      
         add      (16|M0)                 r71.0<1>:w       r53.1<2;1,0>:w          r53.0<2;1,0>:w      
         add      (16|M0)                 r72.0<1>:w       r57.1<2;1,0>:w          r57.0<2;1,0>:w      
         add      (16|M0)                 r69.0<1>:w       r45.1<2;1,0>:w          r45.0<2;1,0>:w      
         add      (16|M0)                 r70.0<1>:w       r49.1<2;1,0>:w          r49.0<2;1,0>:w      
         add      (16|M0)                 r73.0<1>:w       r61.1<2;1,0>:w          r61.0<2;1,0>:w      
         add      (16|M0)                 r74.0<1>:w       r65.1<2;1,0>:w          r65.0<2;1,0>:w      
         add      (16|M0)                 r11.0<1>:d       r79.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r13.0<1>:d       r80.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r15.0<1>:d       r81.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r17.0<1>:d       r82.0<16;16,1>:uw       2:w                 
         shr      (16|M0)                 r84.0<1>:ud      r3.0<8;8,1>:ud          0x2:uw              
         shr      (16|M0)                 r86.0<1>:ud      r5.0<8;8,1>:ud          0x2:uw              
         shr      (16|M0)                 r88.0<1>:ud      r7.0<8;8,1>:ud          0x2:uw              
         shr      (16|M0)                 r90.0<1>:ud      r9.0<8;8,1>:ud          0x2:uw              
         add      (16|M0)                 r75.0<1>:d       r67.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r77.0<1>:d       r68.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r79.0<1>:d       r69.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r81.0<1>:d       r70.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r3.0<1>:d        r71.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r5.0<1>:d        r72.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r7.0<1>:d        r73.0<16;16,1>:uw       2:w                 
         add      (16|M0)                 r9.0<1>:d        r74.0<16;16,1>:uw       2:w                 
         shr      (16|M0)                 r92.0<1>:ud      r11.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r94.0<1>:ud      r13.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r96.0<1>:ud      r15.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r98.0<1>:ud      r17.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r104.0<1>:ud     r75.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r106.0<1>:ud     r77.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r108.0<1>:ud     r79.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r110.0<1>:ud     r81.0<8;8,1>:ud         0x2:uw              
         shr      (16|M0)                 r112.0<1>:ud     r3.0<8;8,1>:ud          0x2:uw              
         shr      (16|M0)                 r114.0<1>:ud     r5.0<8;8,1>:ud          0x2:uw              
         shr      (16|M0)                 r116.0<1>:ud     r7.0<8;8,1>:ud          0x2:uw              
         shr      (16|M0)                 r118.0<1>:ud     r9.0<8;8,1>:ud          0x2:uw              
         mov      (16|M0)                 r100.0<1>:ub     r84.0<4;1,0>:ub         
         mov      (16|M0)                 r101.0<1>:ub     r88.0<4;1,0>:ub         
         mov      (16|M0)                 r100.16<1>:ub    r86.0<4;1,0>:ub         
         mov      (16|M0)                 r101.16<1>:ub    r90.0<4;1,0>:ub         
         mov      (16|M0)                 r102.0<1>:ub     r92.0<4;1,0>:ub         
         mov      (16|M0)                 r103.0<1>:ub     r96.0<4;1,0>:ub         
         mov      (16|M0)                 r102.16<1>:ub    r94.0<4;1,0>:ub         
         mov      (16|M0)                 r103.16<1>:ub    r98.0<4;1,0>:ub         
         mov      (16|M0)                 r120.0<1>:ub     r104.0<4;1,0>:ub        
         mov      (16|M0)                 r121.0<1>:ub     r108.0<4;1,0>:ub        
         mov      (16|M0)                 r120.16<1>:ub    r106.0<4;1,0>:ub        
         mov      (16|M0)                 r121.16<1>:ub    r110.0<4;1,0>:ub        
         mov      (16|M0)                 r122.0<1>:ub     r112.0<4;1,0>:ub        
         mov      (16|M0)                 r123.0<1>:ub     r116.0<4;1,0>:ub        
         mov      (16|M0)                 r122.16<1>:ub    r114.0<4;1,0>:ub        
         mov      (16|M0)                 r123.16<1>:ub    r118.0<4;1,0>:ub        
(W&f0.0) jmpi     DS_L3200    
DS_L2064:
         add      (1|M0)                  r1.0<1>:d        -r83.2<0;1,0>:uw        7:w                 
         shl      (1|M0)                  r2.0<1>:w        r1.0<0;1,0>:w           4:w                 
         shl      (1|M0)                  r3.0<1>:w        r2.0<0;1,0>:w           2:w                 
         add      (1|M0)                  a0.0<1>:uw       r3.0<0;1,0>:uw          0xA80:uw            
         mov      (4|M0)                  r4.0<1>:ub       r[a0.0]<4;1,0>:ub       
         mov      (4|M0)                  r4.4<1>:ub       r[a0.0,16]<4;1,0>:ub    
         mov      (4|M0)                  r4.8<1>:ub       r[a0.0,32]<4;1,0>:ub    
         mov      (4|M0)                  r4.12<1>:ub      r[a0.0,48]<4;1,0>:ub    
         add      (1|M0)                  a0.0<1>:uw       r3.0<0;1,0>:uw          0xD00:uw            
         mov      (4|M0)                  r5.0<1>:ub       r[a0.0]<4;1,0>:ub       
         mov      (4|M0)                  r5.4<1>:ub       r[a0.0,16]<4;1,0>:ub    
         mov      (4|M0)                  r5.8<1>:ub       r[a0.0,32]<4;1,0>:ub    
         mov      (4|M0)                  r5.12<1>:ub      r[a0.0,48]<4;1,0>:ub    
         cmp      (16|M0)     (eq)f0.0    null<1>:d        r1.0<0;1,0>:d           0:w                 
         mov      (16|M0)                 r6.0<1>:w        r86.0<4;1,0>:ub         
         mov      (16|M0)                 r8.0<1>:w        r106.0<4;1,0>:ub        
(f0.0)   sel      (16|M0)                 r7.0<1>:w        r4.0<8;8,1>:ub          r6.0<16;16,1>:w     
(f0.0)   sel      (16|M0)                 r9.0<1>:w        r5.0<8;8,1>:ub          r8.0<16;16,1>:w     
         mov      (16|M0)                 r10.0<1>:w       r101.0<8;8,1>:ub        
         mov      (16|M0)                 r12.0<1>:w       r121.0<8;8,1>:ub        
         cmp      (16|M0)                 (lt)f0.0         null<1>:d               r1.0<0;1,0>:ud      0x2:uw            
(f0.0)   sel      (16|M0)                 r11.0<1>:w       r4.0<8;8,1>:ub          r10.0<16;16,1>:w    
(f0.0)   sel      (16|M0)                 r13.0<1>:w       r5.0<8;8,1>:ub          r12.0<16;16,1>:w    
         mov      (16|M0)                 r14.0<1>:w       r101.16<8;8,1>:ub       
         mov      (16|M0)                 r16.0<1>:w       r121.16<8;8,1>:ub       
         cmp      (16|M0)                 (lt)f0.0         null<1>:d               r1.0<0;1,0>:ud      0x3:uw            
(f0.0)   sel      (16|M0)                 r15.0<1>:w       r4.0<8;8,1>:ub          r14.0<16;16,1>:w    
(f0.0)   sel      (16|M0)                 r17.0<1>:w       r5.0<8;8,1>:ub          r16.0<16;16,1>:w    
         mov      (16|M0)                 r18.0<1>:w       r102.0<8;8,1>:ub        
         mov      (16|M0)                 r20.0<1>:w       r122.0<8;8,1>:ub        
         cmp      (16|M0)                 (lt)f0.0         null<1>:d               r1.0<0;1,0>:ud      0x4:uw            
(f0.0)   sel      (16|M0)                 r19.0<1>:w       r4.0<8;8,1>:ub          r18.0<16;16,1>:w    
(f0.0)   sel      (16|M0)                 r21.0<1>:w       r5.0<8;8,1>:ub          r20.0<16;16,1>:w    
         mov      (16|M0)                 r22.0<1>:w       r102.16<8;8,1>:ub       
         mov      (16|M0)                 r24.0<1>:w       r122.16<8;8,1>:ub       
         cmp      (16|M0)                 (lt)f0.0         null<1>:d               r1.0<0;1,0>:ud      0x5:uw            
(f0.0)   sel      (16|M0)                 r23.0<1>:w       r4.0<8;8,1>:ub          r22.0<16;16,1>:w    
(f0.0)   sel      (16|M0)                 r25.0<1>:w       r5.0<8;8,1>:ub          r24.0<16;16,1>:w    
         mov      (16|M0)                 r26.0<1>:w       r103.0<8;8,1>:ub        
         mov      (16|M0)                 r28.0<1>:w       r123.0<8;8,1>:ub        
         cmp      (16|M0)                 (lt)f0.0         null<1>:d               r1.0<0;1,0>:ud      0x6:uw            
(f0.0)   sel      (16|M0)                 r27.0<1>:w       r4.0<8;8,1>:ub          r26.0<16;16,1>:w    
(f0.0)   sel      (16|M0)                 r29.0<1>:w       r5.0<8;8,1>:ub          r28.0<16;16,1>:w    
         mov      (16|M0)                 r30.0<1>:w       r103.16<8;8,1>:ub       
         cmp      (16|M0)                 (lt)f0.0         null<1>:d               r1.0<0;1,0>:ud      0x7:uw            
         mov      (16|M0)                 r32.0<1>:w       r123.16<8;8,1>:ub       
(f0.0)   sel      (16|M0)                 r31.0<1>:w       r4.0<8;8,1>:ub          r30.0<16;16,1>:w    
(W)      mov      (8|M0)                  r34.0<1>:f       r0.0<8;8,1>:f           
(W)      add      (1|M0)                  a0.0<1>:ud       r2.1<0;1,0>:ud          0x20A8000:ud        
         mov      (16|M0)                 r100.16<1>:ub    r7.0<2;1,0>:ub          
         mov      (16|M0)                 r101.0<1>:ub     r11.0<2;1,0>:ub         
         mov      (16|M0)                 r102.0<1>:ub     r19.0<2;1,0>:ub         
         mov      (16|M0)                 r101.16<1>:ub    r15.0<2;1,0>:ub         
         mov      (16|M0)                 r102.16<1>:ub    r23.0<2;1,0>:ub         
         mov      (16|M0)                 r103.0<1>:ub     r27.0<2;1,0>:ub         
(f0.0)   sel      (16|M0)                 r33.0<1>:w       r5.0<8;8,1>:ub          r32.0<16;16,1>:w    
         mov      (16|M0)                 r103.16<1>:ub    r31.0<2;1,0>:ub         
(W)      mov      (1|M0)                  r34.2<1>:f       0x7000F:f               
(W)      mov      (1|M0)                  r34.0<1>:f       r83.2<0;1,0>:f          
         mov      (16|M0)                 r120.16<1>:ub    r9.0<2;1,0>:ub          
(W)      mov      (1|M0)                  r34.1<1>:f       r83.0<0;1,0>:f          
         mov      (16|M0)                 r121.0<1>:ub     r13.0<2;1,0>:ub         
(W)      sends    (8|M0)                  null:ud          r34                     r100                0x10C             a0.0    
         mov      (16|M0)                 r121.16<1>:ub    r17.0<2;1,0>:ub         
         mov      (16|M0)                 r122.0<1>:ub     r21.0<2;1,0>:ub         
         mov      (16|M0)                 r123.0<1>:ub     r29.0<2;1,0>:ub         
         mov      (16|M0)                 r122.16<1>:ub    r25.0<2;1,0>:ub         
         mov      (16|M0)                 r123.16<1>:ub    r33.0<2;1,0>:ub         
(W)      add      (1|M0)                  a0.0<1>:ud       r2.3<0;1,0>:ud          0x20A8000:ud        
(W)      sends    (8|M0)                  null:ud          r34                     r120                0x10C             a0.0    
(W)      jmpi     DS_L3328    
DS_L3200:
(W)      mov      (8|M0)                  r1.0<1>:f        r0.0<8;8,1>:f           
(W)      add      (1|M0)                  a0.0<1>:ud       r2.1<0;1,0>:ud          0x20A8000:ud        
(W)      mov      (1|M0)                  r1.2<1>:f        0x7000F:f               
(W)      mov      (1|M0)                  r1.0<1>:f        r83.2<0;1,0>:f          
(W)      mov      (1|M0)                  r1.1<1>:f        r83.0<0;1,0>:f          
(W)      sends    (8|M0)                  null:ud          r1                      r100                0x10C             a0.0    
(W)      add      (1|M0)                  a0.0<1>:ud       r2.3<0;1,0>:ud          0x20A8000:ud        
(W)      sends    (8|M0)                  null:ud          r1                      r120                0x10C             a0.0    
DS_L3328:
(W)      mov      (8|M0)                  r127.0<1>:f      r0.0<8;8,1>:f           
(W)      send     (8|M0)                  null             r127:f                  0x27                0x2000010         {EOT}
