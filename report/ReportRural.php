<?php
set_time_limit(600);
require './fpdf/fpdf.php';
include '../library/configServer.php';
include '../library/consulSQL.php';
include '../library/SelectMonth.php';
$selectInstitution=ejecutarSQL::consultar("SELECT * FROM institucion");
$dataInstitution=mysqli_fetch_array($selectInstitution, MYSQLI_ASSOC);
class PDF extends FPDF{
}
ob_end_clean();
$pdf=new PDF('L','mm',array(216,330));
$pdf->AddPage();
$pdf->SetFont("Times","",20);
$pdf->SetMargins(25,20,25);
$pdf->Image('../assets/img/ambiente.png',20,10,80,20);
//$pdf->Image('../assets/img/books.png',270,20,18,20);
$pdf->Ln(20);
$pdf->Cell (0,5,utf8_decode($dataInstitution['Nombre']),0,1,'C');
$pdf->Ln(5);
$pdf->SetFont("Times","",14);
$pdf->Cell (0,5,utf8_decode('Inventario general de Centros Sanitarios Rurales '.$dataInstitution['Year'].''),0,1,'C');
$pdf->Ln(12);
$SAC=ejecutarSQL::consultar("SELECT * FROM categoria ORDER BY CodigoCategoria ASC");
$CountTotal=0;
$CountTotalUnits=0;
while($DSAC=mysqli_fetch_array($SAC, MYSQLI_ASSOC)){
    $SABC=ejecutarSQL::consultar("SELECT * FROM rural WHERE CodigoCategoria='".$DSAC['CodigoCategoria']."' ORDER BY Titulo ASC");
    if(mysqli_num_rows($SABC)>=1){
        $pdf->SetFillColor(255,204,188);
        $pdf->SetFont("Times","b",10);
        $pdf->Cell (0,6,utf8_decode($DSAC['CodigoCategoria'].' Actividad '.$DSAC['Nombre']),1,0,'C',true);
        $pdf->Ln(6);
        $pdf->SetFillColor(179,229,252);
        $pdf->Cell (50,6,utf8_decode('Nombre del establecimiento'),1,0,'C',true);
        $pdf->Cell (40,6,utf8_decode('Representante Legal'),1,0,'C',true);
        $pdf->Cell (25,6,utf8_decode('Telefono'),1,0,'C',true);
        $pdf->Cell (40,6,utf8_decode('Email'),1,0,'C',true);
        $pdf->Cell (30,6,utf8_decode('Biologicos kg/mes'),1,0,'C',true);
        $pdf->Cell (45,6,utf8_decode('Anatomo-patologicos kg/mes'),1,0,'C',true);
        $pdf->Cell (28,6,utf8_decode('Cortopunzantes'),1,0,'C',true);
        $pdf->Cell (22,6,utf8_decode('TOTAL'),1,0,'C',true);
        $pdf->Ln(6);
        $pdf->SetFont("Times","",10);
        while($DSABC=mysqli_fetch_array($SABC, MYSQLI_ASSOC)){
            $PriceT=$DSABC['Estimado']*$DSABC['Existencias'];
            $pdf->Cell (50,6,utf8_decode($DSABC['Titulo']),1,0,'C');
            $pdf->Cell (40,6,utf8_decode($DSABC['Autor']),1,0,'C');
            $pdf->Cell (25,6,utf8_decode($DSABC['Pais']),1,0,'C');
            $pdf->Cell (40,6,utf8_decode($DSABC['Year']),1,0,'C');
            $pdf->Cell (30,6,utf8_decode($DSABC['vehiculos']),1,0,'C');
            $pdf->Cell (45,6,utf8_decode($DSABC['pasajeros']),1,0,'C');
            $pdf->Cell (28,6,utf8_decode($DSABC['socios']),1,0,'C');
            $pdf->Cell (22,6,utf8_decode($DSABC['total']),1,0,'C');
            //$pdf->Cell (16,6,utf8_decode($dataInstitution['total'].$PriceT),1,0,'C');
            $pdf->Ln(6);
            $CountTotal=$CountTotal+$PriceT;
            $CountTotalUnits=$CountTotalUnits+$DSABC['Existencias'];
        }
    }
    mysqli_free_result($SABC);
}
mysqli_free_result($SAC);
$pdf->SetFillColor(255,229,127);
$pdf->SetFont("Times","b",10);
$pdf->Cell (6,6,utf8_decode(''),0,0);
$pdf->Cell (80,6,utf8_decode(''),0,0);
//$pdf->Cell (97,6,utf8_decode('TOTAL LIBROS:  '.$CountTotalUnits),1,0,'C',true);
//$pdf->Cell (97,6,utf8_decode('TOTAL INVENTARIO:  '.$dataInstitution['Moneda'].$CountTotal),1,0,'C',true);
$pdf->Output('Reporte_Inventario_General_'.$dataInstitution['Year'],'I');
mysqli_free_result($selectInstitution);
