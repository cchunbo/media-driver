import os,shutil
import sys

import struct
import os
from sys import platform

class WinKernelSource2Bin(object):
    def __init__(self, component='codec'):
        self.input_dir  = '.\\'
        self.bin_dir    = '.\\compiler'
        self.fromdir    = '.\\Binary'

    def iga_compile(self):
        for filename in os.listdir('.\\Source'):
            fp = os.path.join('.\\Source', filename)
            fileext = os.path.splitext(filename)[1]
            if os.path.isfile(fp) and 'asm' in fileext:
                newfilename = os.path.splitext(filename)[0]
                newfilename += '.krn'
                newfp    = os.path.join('.\\Source', newfilename)
                command  = '.\\compiler\\IGA\\iga64.exe -p 11 -a '
                command += fp
                command += ' -o '
                command += newfp;
                os.system(command)
 
                isExists=os.path.exists("Binary")
 
                if not isExists:
                    os.mkdir("Binary")

                shutil.copy(newfp, "Binary")

                os.remove(newfp)
                print("Compiled %s" % fp);

    def join(self):
        output = open('commonkernel.krn', 'wb')

        bytes  = struct.pack('i', 10)
        output.write(bytes)

        count  = 64
        bytes  = struct.pack('i', count)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'DS4x_Frame.krn')
        count   += os.path.getsize(filepath)
        count1   = ((count + 63) >> 6) << 6
        byteremain1 = count1 - count

        bytes  = struct.pack('i', count1)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'DS4x_Field.krn')
        count1  += os.path.getsize(filepath)
        count2   = ((count1 + 63) >> 6) << 6
        byteremain2 = count2 - count1

        bytes  = struct.pack('i', count2)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'DS2x_Frame.krn')
        count2  += os.path.getsize(filepath)
        count3   = ((count2 + 63) >> 6) << 6
        byteremain3 = count3 - count2

        bytes  = struct.pack('i', count3)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'DS2x_Field.krn')
        count3  += os.path.getsize(filepath)
        count4   = ((count3 + 63) >> 6) << 6
        byteremain4 = count4 - count3

        bytes  = struct.pack('i', count4)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'HME_P.krn')
        count4  += os.path.getsize(filepath)
        count5   = ((count4 + 63) >> 6) << 6
        byteremain5 = count5 - count4
 
        bytes  = struct.pack('i', count5)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'HME_B.krn')
        count5  += os.path.getsize(filepath)
        count6   = ((count5 + 63) >> 6) << 6
        byteremain6 = count6 - count5
 
        bytes  = struct.pack('i', count6)
        output.write(bytes)

        filepath = os.path.join('.\\Binary', 'HME_VDENC.krn')
        count6  += os.path.getsize(filepath)
        count7   = ((count6 + 63) >> 6) << 6
        byteremain7 = count7 - count6
 
        bytes  = struct.pack('i', count7)
        output.write(bytes)

        output.write(chr(0)*20);

        filepath = os.path.join('.\\Binary', 'DS4x_Frame.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                byteremain = count1 - os.path.getsize(filepath)
                output.write(chr(0)*byteremain1) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'DS4x_Field.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain2) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'DS2x_Frame.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain3) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'DS2x_Field.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain4) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'HME_P.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain5) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'HME_B.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain6) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'HME_VDENC.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain7) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('.\\Binary', 'DS_Convert.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*128) 
                break

            output.write(filebytes)
        fileobj.close()

        output.close()
        print ("Completed kernel merge")

class LinuxKernelSource2Bin(object):
    def __init__(self, component='codec'):
        self.input_dir = './'
        self.bin_dir   = './compiler'
        self.fromdir   = './Binary'

    def iga_compile(self):
        for filename in os.listdir('./Source'):
            fp = os.path.join('./Source', filename)
            fileext = os.path.splitext(filename)[1]
            if os.path.isfile(fp) and 'asm' in fileext:
                newfilename = os.path.splitext(filename)[0]
                newfilename += '.krn'
                newfp    = os.path.join('./Source', newfilename)
                command  = './compiler/IGA/iga64 -p 11 -a '
                command += fp
                command += ' -o '
                command += newfp;
                os.system(command)
  
                isExists=os.path.exists("Binary")
 
                if not isExists:
                    os.mkdir("Binary")

                shutil.copy(newfp, "Binary")
 
                os.remove(newfp) 
                print("Compiled %s" % fp);

    def join(self):
        output = open('commonkernel.krn', 'wb')

        bytes  = struct.pack('i', 10)
        output.write(bytes)

        count  = 64
        bytes  = struct.pack('i', count)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'DS4x_Frame.krn')
        count   += os.path.getsize(filepath)
        count1   = ((count + 63) >> 6) << 6
        byteremain1 = count1 - count

        bytes  = struct.pack('i', count1)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'DS4x_Field.krn')
        count1  += os.path.getsize(filepath)
        count2   = ((count1 + 63) >> 6) << 6
        byteremain2 = count2 - count1

        bytes  = struct.pack('i', count2)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'DS2x_Frame.krn')
        count2  += os.path.getsize(filepath)
        count3   = ((count2 + 63) >> 6) << 6
        byteremain3 = count3 - count2

        bytes  = struct.pack('i', count3)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'DS2x_Field.krn')
        count3  += os.path.getsize(filepath)
        count4   = ((count3 + 63) >> 6) << 6
        byteremain4 = count4 - count3

        bytes  = struct.pack('i', count4)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'HME_P.krn')
        count4  += os.path.getsize(filepath)
        count5   = ((count4 + 63) >> 6) << 6
        byteremain5 = count5 - count4
 
        bytes  = struct.pack('i', count5)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'HME_B.krn')
        count5  += os.path.getsize(filepath)
        count6   = ((count5 + 63) >> 6) << 6
        byteremain6 = count6 - count5
 
        bytes  = struct.pack('i', count6)
        output.write(bytes)

        filepath = os.path.join('./Binary', 'HME_VDENC.krn')
        count6  += os.path.getsize(filepath)
        count7   = ((count6 + 63) >> 6) << 6
        byteremain7 = count7 - count6
 
        bytes  = struct.pack('i', count7)
        output.write(bytes)

        output.write(chr(0)*20);

        filepath = os.path.join('./Binary', 'DS4x_Frame.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                byteremain = count1 - os.path.getsize(filepath)
                output.write(chr(0)*byteremain1) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'DS4x_Field.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain2) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'DS2x_Frame.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain3) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'DS2x_Field.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain4) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'HME_P.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain5) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'HME_B.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain6) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'HME_VDENC.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*byteremain7) 
                break

            output.write(filebytes)
        fileobj.close()

        filepath = os.path.join('./Binary', 'DS_Convert.krn')
        fileobj  = open(filepath, 'rb')

        while 1:
            filebytes = fileobj.read()
 
            if not filebytes:
                output.write(chr(0)*128) 
                break

            output.write(filebytes)
        fileobj.close()

        output.close()
        print ("Completed kernel merge")

def main():
    if platform == "linux" or platform == "linux2":
        k2s = LinuxKernelSource2Bin()
    else:
        k2s = WinKernelSource2Bin()

    k2s.iga_compile()
    k2s.join();

if __name__=='__main__':
    main()
