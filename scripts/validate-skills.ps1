param(
    [string]$SkillRoot = (Join-Path (Split-Path -Parent $PSScriptRoot) "skills"),
    [string]$RequiredPrefix = "gamedev-",
    [int]$ExpectedSkillCount = 17,
    [int]$MaximumDescriptionLength = 240,
    [int]$MaximumCombinedDescriptionLength = 4000
)

$ErrorActionPreference = "Stop"
$validationErrors = [System.Collections.Generic.List[string]]::new()
$skillNames = @{}
$combinedDescriptionLength = 0
$skillReferences = [System.Collections.Generic.List[object]]::new()

if (-not (Test-Path -LiteralPath $SkillRoot -PathType Container)) {
    Write-Error "Skill root does not exist: $SkillRoot"
    exit 1
}

$skillDirectories = Get-ChildItem -LiteralPath $SkillRoot -Directory | Sort-Object Name

if ($ExpectedSkillCount -ge 0 -and $skillDirectories.Count -ne $ExpectedSkillCount) {
    $validationErrors.Add("expected $ExpectedSkillCount skill folders, found $($skillDirectories.Count)")
}

foreach ($skillDirectory in $skillDirectories) {
    $skillFile = Join-Path $skillDirectory.FullName "SKILL.md"

    if (-not (Test-Path -LiteralPath $skillFile -PathType Leaf)) {
        $validationErrors.Add("$($skillDirectory.Name): missing SKILL.md")
        continue
    }

    $skillText = Get-Content -LiteralPath $skillFile -Raw
    $frontmatterMatch = [regex]::Match($skillText, '\A---\s*\r?\n(?<body>.*?)\r?\n---', 'Singleline')

    if (-not $frontmatterMatch.Success) {
        $validationErrors.Add("$($skillDirectory.Name): missing or malformed YAML frontmatter")
        continue
    }

    $frontmatter = $frontmatterMatch.Groups['body'].Value
    $nameMatch = [regex]::Match($frontmatter, '(?m)^name:\s*(?<name>[a-z0-9-]+)\s*$')
    $descriptionMatch = [regex]::Match($frontmatter, '(?m)^description:\s*\S.+$')

    if (-not $nameMatch.Success) {
        $validationErrors.Add("$($skillDirectory.Name): frontmatter name is missing or invalid")
    }
    else {
        $skillName = $nameMatch.Groups['name'].Value

        if ($RequiredPrefix -and -not $skillName.StartsWith($RequiredPrefix, [StringComparison]::Ordinal)) {
            $validationErrors.Add("$($skillDirectory.Name): skill name must start with '$RequiredPrefix'")
        }

        if ($skillName -ne $skillDirectory.Name) {
            $validationErrors.Add("$($skillDirectory.Name): frontmatter name '$skillName' does not match the folder")
        }

        if ($skillNames.ContainsKey($skillName)) {
            $validationErrors.Add("$($skillDirectory.Name): duplicate skill name '$skillName' also used by $($skillNames[$skillName])")
        }
        else {
            $skillNames[$skillName] = $skillDirectory.Name
        }

        $metadataFile = Join-Path $skillDirectory.FullName "agents\openai.yaml"
        if (Test-Path -LiteralPath $metadataFile -PathType Leaf) {
            $metadataText = Get-Content -LiteralPath $metadataFile -Raw
            if ($metadataText -notmatch [regex]::Escape("`$$skillName")) {
                $validationErrors.Add("$($skillDirectory.Name): agents/openai.yaml does not reference `$$skillName")
            }
        }
    }

    if (-not $descriptionMatch.Success) {
        $validationErrors.Add("$($skillDirectory.Name): frontmatter description is missing or empty")
    }
    else {
        $descriptionLine = $descriptionMatch.Value
        $description = $descriptionLine.Substring($descriptionLine.IndexOf(':') + 1).Trim()
        $descriptionLength = $description.Length
        $combinedDescriptionLength += $descriptionLength

        if ($descriptionLength -gt $MaximumDescriptionLength) {
            $validationErrors.Add("$($skillDirectory.Name): description is $descriptionLength characters; maximum is $MaximumDescriptionLength")
        }
    }

    $referenceMatches = [regex]::Matches($skillText, 'references/[A-Za-z0-9._/-]+\.md')
    foreach ($referenceMatch in $referenceMatches) {
        $relativeReference = $referenceMatch.Value.Replace('/', [IO.Path]::DirectorySeparatorChar)
        $referencePath = Join-Path $skillDirectory.FullName $relativeReference
        if (-not (Test-Path -LiteralPath $referencePath -PathType Leaf)) {
            $validationErrors.Add("$($skillDirectory.Name): referenced file is missing: $($referenceMatch.Value)")
        }
    }

    $skillReferenceMatches = [regex]::Matches($skillText, '(?<![a-z0-9-])\$?gamedev-[a-z0-9-]+')
    foreach ($skillReferenceMatch in $skillReferenceMatches) {
        $skillReferences.Add([pscustomobject]@{
            Source = $skillDirectory.Name
            Target = $skillReferenceMatch.Value.TrimStart('$')
        })
    }
}

foreach ($skillReference in $skillReferences) {
    if (-not $skillNames.ContainsKey($skillReference.Target)) {
        $validationErrors.Add("$($skillReference.Source): references missing skill '$($skillReference.Target)'")
    }
}

if ($combinedDescriptionLength -gt $MaximumCombinedDescriptionLength) {
    $validationErrors.Add("combined descriptions are $combinedDescriptionLength characters; maximum is $MaximumCombinedDescriptionLength")
}

if ($validationErrors.Count -gt 0) {
    Write-Output "Skill validation failed with $($validationErrors.Count) error(s):"
    $validationErrors | Sort-Object -Unique | ForEach-Object { Write-Output "- $_" }
    exit 1
}

Write-Output "Skill validation passed: $($skillDirectories.Count) skill folder(s), $($skillNames.Count) unique skill name(s), $combinedDescriptionLength description characters."
