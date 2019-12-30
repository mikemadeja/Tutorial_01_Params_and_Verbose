[CmdletBinding(SupportsShouldProcess)]
Param (
    [Parameter(Mandatory=$true)]
    [int]$Integer1,
    [Parameter(Mandatory=$true)]
    [int]$Integer2,
    [Parameter(Mandatory=$true)]
    [ValidateSet("Add", "Subtract", "Multiply", "Divide")]
    [string]$Action
)

$VerboseOption = ($PSCmdlet.MyInvocation.BoundParameters["Verbose"].IsPresent -eq $true)

Function New-MathProblemToSolveFor
{
    [CmdletBinding()]
    Param (
        [int]$Integer1,
        [int]$Integer2,
        [string]$Action
    )
    switch ($Action) {
        "Subtract" {
            Write-Verbose -Message "$Integer1 minus $Integer2" -Verbose:$VerboseOption
            $Output = $Integer1 - $Integer2
        }
        "Multiply" {
            Write-Verbose -Message "$Integer1 multipied by $Integer2" -Verbose:$VerboseOption
            $Output = $Integer1 * $Integer2
        }
        "Divide" { 
            Write-Verbose -Message "$Integer1 divided by $Integer2" -Verbose:$VerboseOption
            $Output = $Integer1 / $Integer2
        }
        Default {
            Write-Verbose -Message "$Integer1 plus $Integer2" -Verbose:$VerboseOption
            $Output = $Integer1 + $Integer2
        }
    }    
    Write-Output $Output 
}

New-MathProblemToSolveFor -Integer1 $Integer1 -Integer2 $Integer2 -Action $Action