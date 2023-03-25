param(
    [Parameter(Mandatory=$true)]$path,
    [Parameter(Mandatory=$true)]$url,
    [Parameter(Mandatory=$false)]$branch
)

Set-Location $path
git init
git add .
git commit -am "auto-init with apire script"
git remote add origin $url

if (-not $branch) {
    $branch = "master"
}

git push -u origin $branch
