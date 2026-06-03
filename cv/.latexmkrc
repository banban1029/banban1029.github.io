# # LaTeX (pdflatex を使用して一発で PDF 化)
$latex = 'pdflatex -synctex=1 -halt-on-error -file-line-error %O %S';
$max_repeat = 5;

# # DVI / PDF (pdflatex を使うため、dvi 経由は不要)
$pdf_mode = 1; # 1 = pdflatex を使用して直接 PDF を生成

# # preview (OSごとのビューア設定)
$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $dvi_previewer = "xdg-open %S";
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $dvi_previewer = "open %S";
    $pdf_previewer = "open %S";
} else {
    $dvi_previewer = "start %S";
    $pdf_previewer = "start %S";
}

# # clean up
$clean_full_ext = "%R.synctex.gz %R.fls %R.fdb_latexmk";