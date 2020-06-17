<?php

$outputDir = __DIR__ . '/../projects/game-prototype01/assets/';
$pngFile = __DIR__ . '/../projects/game-prototype01/assets/charset.png';
$mapFile = __DIR__ . '/../projects/game-prototype01/assets/png_map.csv';

$palette = [
    0 => ['000000', 0, 0, 0, 0, 0, '00'],
    3684408 => ['383838', 3684408, 56, 56, 56, 2, '02'],
    7895160 => ['787878', 7895160, 120, 120, 120, 4, '04'],
    11053224 => ['a8a8a8', 11053224, 168, 168, 168, 6, '06'],
    13421772 => ['cccccc', 13421772, 204, 204, 204, 8, '08'],
    15000804 => ['e4e4e4', 15000804, 228, 228, 228, 10, '0a'],
    15790320 => ['f0f0f0', 15790320, 240, 240, 240, 12, '0c'],
    16579836 => ['fcfcfc', 16579836, 252, 252, 252, 14, '0e'],
    3675136 => ['381400', 3675136, 56, 20, 0, 16, '10'],
    8400904 => ['803008', 8400904, 128, 48, 8, 18, '12'],
    13130788 => ['c85c24', 13130788, 200, 92, 36, 20, '14'],
    16551964 => ['fc901c', 16551964, 252, 144, 28, 22, '16'],
    16565276 => ['fcc41c', 16565276, 252, 196, 28, 24, '18'],
    16570444 => ['fcd84c', 16570444, 252, 216, 76, 26, '1a'],
    16577620 => ['fcf454', 16577620, 252, 244, 84, 28, '1c'],
    16579736 => ['fcfc98', 16579736, 252, 252, 152, 30, '1e'],
    4462596 => ['441804', 4462596, 68, 24, 4, 32, '20'],
    10232860 => ['9c241c', 10232860, 156, 36, 28, 34, '22'],
    13127712 => ['c85020', 13127712, 200, 80, 32, 36, '24'],
    16547868 => ['fc801c', 16547868, 252, 128, 28, 38, '26'],
    16554028 => ['fc982c', 16554028, 252, 152, 44, 40, '28'],
    16565316 => ['fcc444', 16565316, 252, 196, 68, 42, '2a'],
    16565356 => ['fcc46c', 16565356, 252, 196, 108, 44, '2c'],
    16573600 => ['fce4a0', 16573600, 252, 228, 160, 46, '2e'],
    4723716 => ['481404', 4723716, 72, 20, 4, 48, '30'],
    11541524 => ['b01c14', 11541524, 176, 28, 20, 50, '32'],
    14427164 => ['dc241c', 14427164, 220, 36, 28, 52, '34'],
    16273492 => ['f85054', 16273492, 248, 80, 84, 54, '36'],
    16543852 => ['fc706c', 16543852, 252, 112, 108, 56, '38'],
    16551052 => ['fc8c8c', 16551052, 252, 140, 140, 58, '3a'],
    16558252 => ['fca8ac', 16558252, 252, 168, 172, 60, '3c'],
    16565452 => ['fcc4cc', 16565452, 252, 196, 204, 62, '3e'],
    263272 => ['040468', 263272, 4, 4, 104, 64, '40'],
    7348336 => ['702070', 7348336, 112, 32, 112, 66, '42'],
    10760356 => ['a430a4', 10760356, 164, 48, 164, 68, '44'],
    13384908 => ['cc3ccc', 13384908, 204, 60, 204, 70, '46'],
    15225064 => ['e850e8', 15225064, 232, 80, 232, 72, '48'],
    16542972 => ['fc6cfc', 16542972, 252, 108, 252, 74, '4a'],
    16549112 => ['fc84f8', 16549112, 252, 132, 248, 76, '4c'],
    16557308 => ['fca4fc', 16557308, 252, 164, 252, 78, '4e'],
    2622584 => ['280478', 2622584, 40, 4, 120, 80, '50'],
    5770384 => ['580c90', 5770384, 88, 12, 144, 82, '52'],
    8927400 => ['8838a8', 8927400, 136, 56, 168, 84, '54'],
    12601564 => ['c048dc', 12601564, 192, 72, 220, 86, '56'],
    14703868 => ['e05cfc', 14703868, 224, 92, 252, 88, '58'],
    15760636 => ['f07cfc', 15760636, 240, 124, 252, 90, '5a'],
    16554236 => ['fc98fc', 16554236, 252, 152, 252, 92, '5c'],
    16558332 => ['fca8fc', 16558332, 252, 168, 252, 94, '5e'],
    3410056 => ['340888', 3410056, 52, 8, 136, 96, '60'],
    5246160 => ['500cd0', 5246160, 80, 12, 208, 98, '62'],
    7881936 => ['7844d0', 7881936, 120, 68, 208, 100, '64'],
    10506456 => ['a050d8', 10506456, 160, 80, 216, 102, '66'],
    12345596 => ['bc60fc', 12345596, 188, 96, 252, 104, '68'],
    13399292 => ['cc74fc', 13399292, 204, 116, 252, 106, '6a'],
    13930748 => ['d490fc', 13930748, 212, 144, 252, 108, '6c'],
    14461180 => ['dca8fc', 14461180, 220, 168, 252, 110, '6e'],
    269440 => ['041c80', 269440, 4, 28, 128, 112, '70'],
    535752 => ['082cc8', 535752, 8, 44, 200, 114, '72'],
    4476124 => ['444cdc', 4476124, 68, 76, 220, 116, '74'],
    5794044 => ['5868fc', 5794044, 88, 104, 252, 118, '76'],
    7373052 => ['7080fc', 7373052, 112, 128, 252, 120, '78'],
    9478396 => ['90a0fc', 9478396, 144, 160, 252, 122, '7a'],
    10268924 => ['9cb0fc', 10268924, 156, 176, 252, 124, '7c'],
    12634364 => ['c0c8fc', 12634364, 192, 200, 252, 126, '7e'],
    787592 => ['0c0488', 787592, 12, 4, 136, 128, '80'],
    3681460 => ['382cb4', 3681460, 56, 44, 180, 130, '82'],
    5786840 => ['584cd8', 5786840, 88, 76, 216, 132, '84'],
    6841596 => ['6864fc', 6841596, 104, 100, 252, 134, '86'],
    8946940 => ['8884fc', 8946940, 136, 132, 252, 136, '88'],
    10000636 => ['9898fc', 10000636, 152, 152, 252, 138, '8a'],
    11578620 => ['b0acfc', 11578620, 176, 172, 252, 140, '8c'],
    12632316 => ['c0c0fc', 12632316, 192, 192, 252, 142, '8e'],
    1845336 => ['1c2858', 1845336, 28, 40, 88, 144, '90'],
    1853584 => ['1c4890', 1853584, 28, 72, 144, 146, '92'],
    1863876 => ['1c70c4', 1863876, 28, 112, 196, 148, '94'],
    4757720 => ['4898d8', 4757720, 72, 152, 216, 150, '96'],
    5551356 => ['54b4fc', 5551356, 84, 180, 252, 152, '98'],
    9230588 => ['8cd8fc', 9230588, 140, 216, 252, 154, '9a'],
    10018044 => ['98dcfc', 10018044, 152, 220, 252, 156, '9c'],
    12642556 => ['c0e8fc', 12642556, 192, 232, 252, 158, '9e'],
    2899968 => ['2c4000', 2899968, 44, 64, 0, 160, 'a0'],
    4481024 => ['446000', 4481024, 68, 96, 0, 162, 'a2'],
    3970080 => ['3c9420', 3970080, 60, 148, 32, 164, 'a4'],
    5548088 => ['54a838', 5548088, 84, 168, 56, 166, 'a6'],
    6344816 => ['60d070', 6344816, 96, 208, 112, 168, 'a8'],
    7402628 => ['70f484', 7402628, 112, 244, 132, 170, 'aa'],
    8715412 => ['84fc94', 8715412, 132, 252, 148, 172, 'ac'],
    11336884 => ['acfcb4', 11336884, 172, 252, 180, 174, 'ae'],
    540680 => ['084008', 540680, 8, 64, 8, 176, 'b0'],
    1075212 => ['10680c', 1075212, 16, 104, 12, 178, 'b2'],
    1347600 => ['149010', 1347600, 20, 144, 16, 180, 'b4'],
    1882132 => ['1cb814', 1882132, 28, 184, 20, 182, 'b6'],
    2152472 => ['20d818', 2152472, 32, 216, 24, 184, 'b8'],
    7139392 => ['6cf040', 7139392, 108, 240, 64, 186, 'ba'],
    8453208 => ['80fc58', 8453208, 128, 252, 88, 188, 'bc'],
    11599000 => ['b0fc98', 11599000, 176, 252, 152, 190, 'be'],
    278536 => ['044008', 278536, 4, 64, 8, 192, 'c0'],
    287760 => ['046410', 287760, 4, 100, 16, 194, 'c2'],
    559124 => ['088814', 559124, 8, 136, 20, 196, 'c4'],
    568348 => ['08ac1c', 568348, 8, 172, 28, 198, 'c6'],
    8706080 => ['84d820', 8706080, 132, 216, 32, 200, 'c8'],
    10024996 => ['98f824', 10024996, 152, 248, 36, 202, 'ca'],
    11861080 => ['b4fc58', 11861080, 180, 252, 88, 204, 'cc'],
    14482560 => ['dcfc80', 14482560, 220, 252, 128, 206, 'ce'],
    13324 => ['00340c', 13324, 0, 52, 12, 208, 'd0'],
    804892 => ['0c481c', 804892, 12, 72, 28, 210, 'd2'],
    5010464 => ['4c7420', 5010464, 76, 116, 32, 212, 'd4'],
    6590504 => ['649028', 6590504, 100, 144, 40, 214, 'd6'],
    10530868 => ['a0b034', 10530868, 160, 176, 52, 216, 'd8'],
    11587648 => ['b0d040', 11587648, 176, 208, 64, 218, 'da'],
    13951048 => ['d4e048', 13951048, 212, 224, 72, 220, 'dc'],
    15793232 => ['f0fc50', 15793232, 240, 252, 80, 222, 'de'],
    2371584 => ['243000', 2371584, 36, 48, 0, 224, 'e0'],
    2113540 => ['204004', 2113540, 32, 64, 4, 226, 'e2'],
    8415280 => ['806830', 8415280, 128, 104, 48, 228, 'e4'],
    11311160 => ['ac9838', 11311160, 172, 152, 56, 230, 'e6'],
    13939776 => ['d4b440', 13939776, 212, 180, 64, 232, 'e8'],
    14731320 => ['e0c838', 14731320, 224, 200, 56, 234, 'ea'],
    14738484 => ['e0e434', 14738484, 224, 228, 52, 236, 'ec'],
    16317564 => ['f8fc7c', 16317564, 248, 252, 124, 238, 'ee'],
    4200448 => ['401800', 4200448, 64, 24, 0, 240, 'f0'],
    7349256 => ['702408', 7349256, 112, 36, 8, 242, 'f2'],
    11030556 => ['a8501c', 11030556, 168, 80, 28, 244, 'f4'],
    12350512 => ['bc7430', 12350512, 188, 116, 48, 246, 'f6'],
    14716996 => ['e09044', 14716996, 224, 144, 68, 248, 'f8'],
    16297048 => ['f8ac58', 16297048, 248, 172, 88, 250, 'fa'],
    16564320 => ['fcc060', 16564320, 252, 192, 96, 252, 'fc']
];

$im = @imagecreatefrompng($pngFile);

echo 'Starting extracting charset(s) data from the image...' . PHP_EOL;

$chars = [];
$out = '';

foreach (array_slice(file($mapFile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES), 1) as $row) {

    $row = str_getcsv($row);
    $id = $row[0];
    $offsetX = (int) $row[1];
    $offsetY = (int) $row[2];
    $width = (int) $row[3];
    $height = (int) $row[4];
    $nofColors = (int) $row[5];
    $colorsLimitPerChar = (int) $row[6];
    $nofBitsForColor = (int) $row[7];

    $charsetColors = [];

    echo 'The charset ' . $id . ':' . PHP_EOL;
    echo '... has the width and height: ' . $width . 'x' . $height . ';' . PHP_EOL;
    for ($y = 0; $y < $height; $y += 8) {
        for ($x = 0; $x < $width; $x += 8) {
            $charColors = [];
            for ($j = 0; $j < 8; $j++) {
                for ($i = 0; $i < 8; $i++) {
                    $ix = $offsetX + $x + $i;
                    $iy = $offsetY + $y + $j;
                    $cols = imagecolorsforindex($im, imagecolorat($im, $ix, $iy));
                    $rgb = 0 | ($cols['red'] << 16) | ($cols['green'] << 8) | $cols['blue'];
                    if (array_key_exists($rgb, $palette) === false) {
                        echo '[!] The color ' . $rgb . ' (' . $ix . 'x' . $iy . ') is not in the palette!' . PHP_EOL;
                        exit;
                    }
                    $charColors[] = $rgb;

                }   
            }
            $charColors = array_unique($charColors);
            if (count($charColors) > $colorsLimitPerChar) {
                echo '[!] The char at the position (' . $x . ', ' . $y . ') has more colors than the limit (' . $colorsLimitPerChar . ')!' . PHP_EOL;
                exit;
            }
            $charsetColors = array_merge($charsetColors, $charColors);
        }
    }

    $charsetColors = array_unique($charsetColors);
    $charsetColors = array_slice($charsetColors, 0);
    echo '... has ' . count($charsetColors) . ' unique colors;' . PHP_EOL;

    $colors2Bits = [];
    for ($i = 0; $i < count($charsetColors); ++$i) {
        $colors2Bits[$charsetColors[$i]] = str_pad(substr(decbin($i < 4 ? $i : 3), -$nofBitsForColor, $nofBitsForColor), 2, '0', STR_PAD_LEFT); 
    }

    if (array_key_exists($nofColors, $chars) === false) {
        $chars[$nofColors] = [
            'chars' => [],
            'indexes' => []
        ];
    }

    for ($y = 0; $y < $height; $y += 8) {
        for ($x = 0; $x < $width; $x += 8) {
            $charBits = '';
            for ($j = 0; $j < 8; $j++) {
                for ($i = 0; $i < 8; $i++) {
                    $ix = $offsetX + $x + $i;
                    $iy = $offsetY + $y + $j;
                    $cols = imagecolorsforindex($im, imagecolorat($im, $ix, $iy));
                    $rgb = 0 | ($cols['red'] << 16) | ($cols['green'] << 8) | $cols['blue'];
                    $charBits .= $colors2Bits[$rgb];
                }
            }
            $hash = md5($charBits);
            $char = array_map(function ($byte) {
                return bindec($byte);
            }, str_split($charBits, 8));
            if (array_key_exists($hash, $chars[$nofColors]['chars']) === false) {
                $chars[$nofColors]['indexes'][$hash] = count($chars[$nofColors]['chars']);
            }
            $chars[$nofColors]['chars'][$hash] = $char;
        }
    }

    echo '... has ' . count($chars) . ' unique chars;' . PHP_EOL;

}

echo '... done!' . PHP_EOL;

imagedestroy($im);