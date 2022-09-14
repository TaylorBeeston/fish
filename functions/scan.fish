# Defined in /tmp/fish.Hv0lyE/scan.fish @ line 1
function scan
    scanimage --device "airscan:w0:HP OfficeJet Pro 9010 series" --format=png --progress --output-file $argv
end
