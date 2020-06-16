<?php
$colors = file(__DIR__ . '/paleta_kolorow_w_hex.txt', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

$hue = 0;
$luminance = 0;
$colorsData = [];
foreach ($colors as $hex) {
    list($r, $g, $b) = sscanf($hex, "%02x%02x%02x");
    $rgb = 0 | ($r << 16) | ($g << 8) | $b;
    $colorData = $rgb . ' => [' . implode(', ', [
        "'$hex'", $rgb, $r, $g, $b, $hue * 16 + $luminance * 2, "'" . str_pad(dechex($hue * 16 + $luminance * 2), 2, '0', STR_PAD_LEFT) . "'"
    ]) . ']';
    $colorsData[] = $colorData;
    echo $colorData . PHP_EOL;
    $luminance++;
    if ($luminance > 7) {
        $hue++;
        $luminance = 0;
    }
}
echo 'PHP ARRAY STARTS HERE:' . PHP_EOL;
echo '[' . PHP_EOL . implode(',' . PHP_EOL, array_map(function ($colorData) {
    return "\t" . $colorData;
}, $colorsData)) . PHP_EOL . ']';
