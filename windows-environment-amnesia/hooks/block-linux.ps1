$inputString = [Console]::In.ReadToEnd()
$matched = $inputString -match '\b(sed|awk|grep|rm\s+-rf|export|cat)\b'
if ($matched) {
    $response = @{
        hookSpecificOutput = @{
            hookEventName = "PreToolUse"
            permissionDecision = "deny"
            permissionDecisionReason = "BLOCKED: Linux commands are forbidden in this environment. Use native API tools."
        }
    }
    $responseString = $response | ConvertTo-Json -Compress
    [Console]::WriteLine($responseString)
    exit 0
}
exit 0
