<%

'''Decode:

' USE: sField = Decode(request.querystring(encode("sParm")))

Function DecodeLink(sIn)
    Dim x, y, abfrom, abto
    DecodeLink = "" : abfrom = ""
    For x = 0 To 25 : abfrom = abfrom & Chr(65 + x) : Next
    For x = 0 To 25 : abfrom = abfrom & Chr(97 + x) : Next
    For x = 0 To 9 : abfrom = abfrom & CStr(x) : Next
    abto = Mid(abfrom, 17, Len(abfrom) - 16) & Left(abfrom, 16)
    For x = 1 To Len(sIn) : y = InStr(abto, Mid(sIn, x, 1))
        If y = 0 Then
            DecodeLink = DecodeLink & Mid(sIn, x, 1)
        Else
            DecodeLink = DecodeLink & Mid(abfrom, y, 1)
        End If
    Next
End Function
'''Encode:

' USE: location.href="nextpage.asp?" & encode("sParm=" & sData)

Function EncodeLink(sIn)
    ''Response.Write "sIn: " & sIn
    Dim x, y, abfrom, abto
    EncodeLink = "" : abfrom = ""
    For x = 0 To 25 : abfrom = abfrom & Chr(65 + x) : Next
    Response.Write "ABFrom 1: " & abfrom
    For x = 0 To 25 : abfrom = abfrom & Chr(97 + x) : Next
    Response.Write "ABFrom 2: " & abfrom
    For x = 0 To 9 : abfrom = abfrom & CStr(x) : Next
    Response.Write "ABFrom 3: " & abfrom
    abto = Mid(abfrom, 17, Len(abfrom) - 16) & Left(abfrom, 16)
    Response.Write "abto: " & abto
    For x = 1 To Len(sIn) : y = InStr(abfrom, Mid(sIn, x, 1))
        Response.Write "y: " & y
    If y = 0 Then
            EncodeLink = EncodeLink & Mid(sIn, x, 1)
        Else
            EncodeLink = EncodeLink & Mid(abto, y, 1)
        End If
    Next
    ''Response.Write "Encode: " & EncodeLink
End Function

' Encrypt and decrypt functions for classic ASP (by TFI)

'********* set a random string with random length ***********
cryptkey = "GNQ?4i0-*\CldnU+[vrF1j1PcWeJfVv4QGBurFK6}*l[H1S:oY\v@U?i,oD]f/n8oFk6NesH--^PJeCLdp+(t8SVe:ewY(wR9p-CzG<,Q/(U*.pXDiz/KvnXP`BXnkgfeycb)1A4XKAa-2G}74Z8CqZ*A0P8E[S`6RfLwW+Pc}13U}_y0bfscJ<vkA[JC;0mEEuY4Q,([U*XRR}lYTE7A(O8KiF8>W/m1D*YoAlkBK@`3A)trZsO5xv@5@MRRFkt\"

'**************************** ENCRYPT FUNCTION ******************************

'*** Note: bytes 255 and 0 are converted into the same character, in order to
'*** avoid a char 0 which would terminate the string

function encryptTHIS(inputstr)
        Dim i,x
        outputstr=""
        cc=0
        for i=1 to len(inputstr)
                x=asc(mid(inputstr,i,1))
                x=x-48
                if x<0 then x=x+255
                x=x+asc(mid(cryptkey,cc+1,1))
                if x>255 then x=x-255
                outputstr=outputstr&chr(x)
                cc=(cc+1) mod len(cryptkey)
        next
        encryptTHIS=server.urlencode(replace(outputstr,"%","%25"))
end function

'**************************** DECRYPT FUNCTION ******************************

function decryptTHIS(byval inputstr)
        Dim i,x
        inputstr=urldecode(inputstr)
        outputstr=""
        cc=0
        for i=1 to len(inputstr)
                x=asc(mid(inputstr,i,1))
                x=x-asc(mid(cryptkey,cc+1,1))
                if x<0 then x=x+255
                x=x+48
                if x>255 then x=x-255
                outputstr=outputstr&chr(x)
                cc=(cc+1) mod len(cryptkey)
        next
        decryptTHIS=outputstr
end function

'****************************************************************************

Function URLDecode(sConvert)
  Dim aSplit
  Dim sOutput
  Dim I
  If IsNull(sConvert) Then
         URLDecode = ""
         Exit Function
  End If
  'sOutput = REPLACE(sConvert, "+", " ") ' convert all pluses to spaces
  sOutput=sConvert
  aSplit = Split(sOutput, "%") ' next convert %hexdigits to the character
  If IsArray(aSplit) Then
        sOutput = aSplit(0)
        For I = 0 to UBound(aSplit) - 1
          sOutput = sOutput &  Chr("&H" & Left(aSplit(i + 1), 2)) & Right(aSplit(i + 1), Len(aSplit(i + 1)) - 2)
        Next
  End If
  URLDecode = sOutput
End Function
%>