#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=rtzbf.exe
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Change2CUI=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 rtzbf stupid interpreter
 https://github.com/fault2004/rtzbf
 Version:        1.0.1
 AutoIt Version: 3.3.16.1
 Author:         fault2004

#ce ----------------------------------------------------------------------------

#cs ----------------------------------------------------------------------------

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.

#ce ----------------------------------------------------------------------------

#include <File.au3>

Global $fA, $fB

If $CmdLine[0] = 1 Then
	$aL = _FileListToArray($CmdLine[1])
	For $x = 1 to UBound($aL) -1
		$aLS = StringSplit($aL[$x], "•")
		If @error Then Exit
		Select
			; Utility
			;; Create/Update Variable
			Case $aLS[2] = "inv"
				Assign($aLS[3], "" & $aLS[4], 2)
			;; Terminate
			Case $aLS[2] = "rip"
				Exit
			;; Print
			Case $aLS[2] = "out"
				Local $s1 = Eval($aLS[3])
				ConsoleWrite($s1 & @CRLF)
			;; Sleep
			Case $aLS[2] = "fee"
				Sleep($aLS[3])
			;; Read pipe
			Case $aLS[2] = "rad"
				Local $iC = ConsoleRead()
				Local $iD = StringReplace($iC, @CRLF, "")
				Assign($aLS[3], "" & $iD, 2)
			;; Jump to position
			Case $aLS[2] = "jmp"
				If $aLS[4] = "A" Then
					If $fA = 1 Then
						$x = $aLS[3]
					EndIf
					ElseIf $aLS[4] = "B" Then
					If $fB = 1 Then
						$x = $aLS[3]
					EndIf
				EndIf
			;; Set flags to 0
			Case $aLS[2] = "set"
				If $aLS[3] = "A" Then
					$fA = 0
				ElseIf $aLS[3] = "B" Then
					$fB = 0
				EndIf
			;; Replace string
			Case $aLS[2] = "rep"
				Local $i1 = Eval($aLS[3])
				Local $i2 = Eval($aLS[5])
				Local $r1 = StringReplace($i1, $aLS[4], $i2, 0, 1)
				Assign($aLS[6], $r1, 2)
			;; Compare (equal)
			Case $aLS[2] = "coe"
				Local $i1 = Eval($aLS[3])
				Local $i2 = Eval($aLS[4])
				If $i1 == $i2 Then
					If $aLS[5] = "A" Then
						$fA = 1
					ElseIf $aLS[5] = "B" Then
						$fB = 1
					EndIf
				EndIf

			; Math
			;; Add
			Case $aLS[2] = "mad"
				Local $i1 = Eval($aLS[3])
				Local $i2 = Eval($aLS[4])
				Assign($aLS[5], $i1+$i2, 2)
			;; Sub
			Case $aLS[2] = "mst"
				Local $i1 = Eval($aLS[3])
				Local $i2 = Eval($aLS[4])
				Assign($aLS[5], $i1-$i2, 2)
			;; Divi
			Case $aLS[2] = "mdi"
				Local $i1 = Eval($aLS[3])
				Local $i2 = Eval($aLS[4])
				Assign($aLS[5], $i1/$i2, 2)
			;; Multi
			Case $aLS[2] = "mmu"
				Local $i1 = Eval($aLS[3])
				Local $i2 = Eval($aLS[4])
				Assign($aLS[5], $i1*$i2, 2)

		EndSelect
	Next
EndIf
