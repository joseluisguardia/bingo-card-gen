Set-PSDebug -Strict
cls

#Starter Banner
Write-Host "
 __________      ___    ___         __   ____________   ______________
|    __    \    |   |  |   \       |  | |  __________|  |             |
|   |  |    \   |   |  |    \      |  | | |             |     ___     |
|   |  |     |  |   |  |     \     |  | | |             |    |   |    |
|   |__|    /   |   |  |  |\  \    |  | | |             |    |   |    |
|    __    /    |   |  |  | \  \   |  | | |     _____   |    |   |    |
|   |  |    \   |   |  |  |  \  \  |  | | |    |___  |  |    |   |    |
|   |  |     \  |   |  |  |   \  \ |  | | |        | |  |    |   |    |
|   |__|     |  |   |  |  |    \  \|  | | |        | |  |    |___|    |
|            /  |   |  |  |     \     | | |________| |  |             |
|___________/   |___|  |__|      \____| |____________|  |_____________|
"

#We need to create a new empty card
$papeleta = New-Object 'string[,]' 3,9
[int]$contadorx = 0

#Create template
   for([int]$i=0; $i -le 2;$i++){
   $contadorx=0
   Switch($i){
     
                                0 {  $randomi= Get-Random -Minimum 0 -Maximum 3
                                     $randomj= Get-Random -Minimum 0 -Maximum 3
                                     while($contadorx -ne 5){ if($papeleta[$randomi,$randomj] -notmatch 'X'){ $papeleta[$randomi,$randomj]= 'X'
                                                                                          $contadorx++ }
                                     else {  $randomi= Get-Random -Minimum 0 -Maximum 3
                                             $randomj= Get-Random -Minimum 0 -Maximum 3 }
                                        }
                                  }
                                1 {  $randomi= Get-Random -Minimum 0 -Maximum 3
                                     $randomj= Get-Random -Minimum 3 -Maximum 6
                                     while($contadorx -ne 5){ if($papeleta[$randomi,$randomj] -notmatch 'X'){ $papeleta[$randomi,$randomj]= 'X'
                                                                                          $contadorx++ }
                                     else {  $randomi= Get-Random -Minimum 0 -Maximum 3
                                             $randomj= Get-Random -Minimum 3 -Maximum 6 }
                                        }
                                
                                 }
                                2 { $randomi= Get-Random -Minimum 0 -Maximum 3
                                    $randomj= Get-Random -Minimum 6 -Maximum 9 
                                    while($contadorx -ne 5){ if($papeleta[$randomi,$randomj] -notmatch 'X'){ $papeleta[$randomi,$randomj]= 'X'
                                                                                          $contadorx++ }
                                    else {  $randomi= Get-Random -Minimum 0 -Maximum 3
                                            $randomj= Get-Random -Minimum 6 -Maximum 9 }
                                
                                 }

     
                            } 
     
     
       
       
       
       
       
       
}

    }

#We need to revisate that no have repeaters numbers, and later order.
for([int]$i=0;$i -le 2;$i++) { 
    [string[]]$columna= @()
        for([int]$j=0;$j -le 8;$j++) { 
                
                Switch($j){
                    
                    0 { 
                        $random = Get-Random -Minimum 1 -Maximum 10
                        $columna += $papeleta[0,$j]
                        $columna += $papeleta[1,$j]
                        $columna += $papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 1 -Maximum 10
                        }

                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    1 { 
                        $random = Get-Random -Minimum 10 -Maximum 20
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 10 -Maximum 20
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    2 { 
                        $random = Get-Random -Minimum 20 -Maximum 30
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 20 -Maximum 30
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    3 { 
                        $random = Get-Random -Minimum 30 -Maximum 40
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 30 -Maximum 40
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    4 { 
                        $random = Get-Random -Minimum 40 -Maximum 50
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 40 -Maximum 50
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    5 { 
                        $random = Get-Random -Minimum 50 -Maximum 60
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 50 -Maximum 60
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    6 { 
                        $random = Get-Random -Minimum 60 -Maximum 70
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 60 -Maximum 70
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    7 { 
                        $random = Get-Random -Minimum 70 -Maximum 80
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 70 -Maximum 80
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }
                    8 { 
                        $random = Get-Random -Minimum 80 -Maximum 90
                        $columna = $papeleta[0,$j],$papeleta[1,$j],$papeleta[2,$j]
                        while ($columna.Contains([string]$random)) {
                            $random = Get-Random -Minimum 70 -Maximum 90
                        }
                        if ($papeleta[$i,$j] -ne 'X') {$papeleta[$i,$j] = $random}
                         }






                }

            }

}

for([int]$i=0; $i -le 8;$i++ ){
    $auxiliar = $papeleta[0,$i], $papeleta[1,$i], $papeleta[2,$i]
    $auxiliar = $auxiliar| Sort-Object
    $papeleta[0,$i] = $auxiliar.Get(0)
    $papeleta[1,$i] = $auxiliar.Get(1)
    $papeleta[2,$i] = $auxiliar.Get(2)
    $auxiliar.Clear()

}

#Print a beatiful output
Write-Host ("|¯"+"¯"*48 + "¯|")

for([int]$i=0;$i -le 2;$i++) { 
    Write-Host "|" -NoNewline
     #mostrar fila
     #mostrem tots els elements de la fila $i
        for([int]$j=0;$j -le 8;$j++) {
               #mostrar element
               $m = $papeleta[$i,$j]
                Write-Host ("{0,5}" -f $m) -NoNewline
            } 
    #saltem de linia
    Write-Host "     |" -NoNewline
    Write-Host
}

Write-Host ("|_"+"_"*48+"_|`n" )