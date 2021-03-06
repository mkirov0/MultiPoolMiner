﻿using module ..\Include.psm1

param(
    [PSCustomObject]$Wallets
)

$Name = Get-Item $MyInvocation.MyCommand.Path | Select-Object -ExpandProperty BaseName

if (-not ($Wallets | Get-Member -MemberType NoteProperty -ErrorAction Ignore | Select-Object -ExpandProperty Name) -ne "BTC") {
    Write-Log -Level Verbose "Cannot get balance on pool ($Name) - no wallet address specified. "
    return
}

$RetryCount = 3
$RetryDelay = 2
while (-not ($APIRequest) -and $RetryCount -gt 0) {
    try {
        if (-not $APIRequest) {$APIRequest = Invoke-RestMethod "http://phi-phi-pool.com/api/currencies" -UseBasicParsing -TimeoutSec 3 -ErrorAction Stop}
    }
    catch {
        Start-Sleep -Seconds $RetryDelay # Pool might not like immediate requests
    }
    $RetryCount--
}

if (-not $APIRequest) {
    Write-Log -Level Warn "Pool Balance API ($Name) has failed. "
    return
}

if (($APIRequest | Get-Member -MemberType NoteProperty -ErrorAction Ignore | Measure-Object Name).Count -le 1) {
    Write-Log -Level Warn "Pool Balance API ($Name) returned nothing. "
    return
}

#Pool does not do auto conversion to BTC
$Payout_Currencies = @($APIRequest | Get-Member -MemberType NoteProperty -ErrorAction Ignore | Select-Object -ExpandProperty Name) | Where-Object {$Wallets.$_} | Sort-Object -Unique
if ($Payout_Currencies) {
    Write-Log -Level Verbose "Cannot get balance on pool ($Name) - no wallet address specified. "
    return
}

$Payout_Currencies | Foreach-Object {
    $Payout_Currency = $_
    $APIRequest = ""        
    $RetryCount = 3
    $RetryDelay = 2
    while (-not ($APIRequest) -and $RetryCount -gt 0) {
        try {
            $APIRequest = Invoke-RestMethod "http://api.yiimp.eu/api/wallet?address=$($Wallets.$Payout_Currency)" -UseBasicParsing -TimeoutSec 3 -ErrorAction Stop
        }
        catch {
            Start-Sleep -Seconds $RetryDelay # Pool might not like immediate requests
        }
        $RetryCount--
    }

    if (($APIRequest | Get-Member -MemberType NoteProperty -ErrorAction Ignore | Measure-Object Name).Count -le 1) {
        Write-Log -Level Warn "Pool Balance API ($Name) for $Payout_Currency has failed. "
        
    }
    else {
        [PSCustomObject]@{
            Name        = "$($Name) ($($APIRequest.currency))"
            Pool        = $Name
            Currency    = $APIRequest.currency
            Balance     = $APIRequest.balance
            Pending     = $APIRequest.unsold
            Total       = $APIRequest.unpaid
            LastUpdated = (Get-Date).ToUniversalTime()
        }
    }
}
