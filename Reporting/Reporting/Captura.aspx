<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Captura.aspx.vb" Inherits="Reporting.Captura" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Administracion de Reportes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/superhero/superhero.css" rel="stylesheet" type="text/css" />
    <link href="css/superhero/superhero.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/fondo.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div>
        <div class="container">

            <div class="row">
                <div class="col-lg-2">&nbsp;</div>
                <div class="col-lg-8 well">
                    <label for="equipo" class="control-label col-lg-2">EQUIPO</label>
                    <div class="col-lg-10">
                         <asp:DropDownList ID="equipo" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-2">&nbsp;</div>
            </div>     
            <br />

            <div class="row">
                <!--Formulario de captura-->
                <div class="col-lg-4">

                    <div class="panel panel-primary">
                        <div class="panel-heading text-center"><h4 class="text-center">EQUIPO PMX <asp:Label ID="lblEquipo" runat="server" Text="1311"></asp:Label></h4></div>

                         <div class="panel-body">
                            <label for="incio_perf" class="col-lg-4 control-label ">INICIO PERF:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="inicio_perf" CssClass="form-control input-sm" runat="server" placeholder="Inicio de Perforación" TextMode="Date"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <label for="equipo_perf" class="col-lg-5 control-label">EQUIPO PERF:</label>
                            <div class="col-lg-7">
                                <asp:DropDownList ID="equipo_perf" CssClass="form-control input-sm" runat="server" placeholder="Equipo de Perforacion"></asp:DropDownList>
                            </div>
                             <br />
                             <br />
                             <label for="fin_perf" class="col-lg-4 control-label">FIN PERF:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="fin_perf" CssClass="form-control input-sm" runat="server" placeholder="Fin de Perforación" TextMode="Date"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <label for="tipo_pozo" class="col-lg-4 control-label">TIPO POZO:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="tipo_pozo" CssClass="form-control input-sm" runat="server" placeholder="Equipo de Perforacion"></asp:DropDownList>
                            </div>
                             <br />
                             <br />
                             <label for="Max_Inclinacion"class="col-lg-4 control-label">MAX INCLI:</label>
                             <div class="col-lg-8">
                                <asp:TextBox ID="Max_Inclinacion" CssClass="form-control input-sm" runat="server" placeholder="MAX INCLINACION" ></asp:TextBox>
                            </div>
                            <br />
                            <br />
                               <label for="Max_dls"class="col-lg-4 control-label">MAX DLS:</label>
                             <div class="col-lg-8">
                                <asp:TextBox ID="Max_dls" CssClass="form-control input-sm" runat="server" placeholder="MAX DLS" ></asp:TextBox>
                            </div>
                            <br />
                            <br />
                               <label for="fecha_ultima_int"class="col-lg-4 control-label">FEC ULT:</label>
                             <div class="col-lg-8">
                                <asp:TextBox ID="fecha_ultima_int" CssClass="form-control input-sm" runat="server" placeholder="FECHA ULT INT"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                             <label for="ult_rep" class="col-lg-4 control-label">ULT REP:</label>
                             <div class="col-lg-8">
                                 <asp:TextBox ID="ult_rep" runat="server" CssClass="form-control input-sm" placeholder="ULTIMA REPARACION"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                             <label for="fc_ult_int" class="col-lg-4 control-label">F.C INT:</label>
                             <div class="col-lg-8">
                                 <asp:TextBox ID="fc_ult_int" CssClass="form-control input-sm" runat="server" placeholder="F.C ULTIMA INT"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                               <label for="flu_ctrl" class="col-lg-4 control-label">FLUD CTRL:</label>
                             <div class="col-lg-8">
                                 <asp:TextBox ID="flu_ctrl" CssClass="form-control input-sm" runat="server" placeholder="FLUIDO DE CONTROL"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                             <label for="fec_inicio" class="col-lg-4 control-label">FEC INICIO:</label>
                             <div class="col-lg-4">
                                 <asp:TextBox runat="server" CssClass="form-control input-sm" ID="fec_inicio" TextMode="Date"></asp:TextBox>
                             </div>
                             <div class="col-lg-4">
                                 <asp:TextBox ID="hora_inicio" CssClass="form-control input-sm" runat="server" TextMode="Time" placeholder="00:00"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                             <label for="fec_actual" class="col-lg-4 control-label">FEC ACTUAL:</label>
                             <div class="col-lg-4">
                                 <asp:TextBox runat="server" CssClass="form-control input-sm" ID="fec_actual" TextMode="Date"></asp:TextBox>
                             </div>
                             <div class="col-lg-4">
                                 <asp:TextBox ID="hora_actual" CssClass="form-control input-sm" runat="server" TextMode="Time" placeholder="00:00"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                             <label for="prod_ant" class="col-lg-4 control-label">PROD ANT:</label>
                             <div class="col-lg-8">
                                 <asp:TextBox ID="prod_ant" CssClass="form-control input-sm" runat="server" placeholder="PRODUCCION ANTERIOR"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                             <label for="prod_act" class="col-lg-4 control-label">PROD ACTUAL:</label>
                             <div class="col-lg-8">
                                 <asp:TextBox ID="prod_act" CssClass="form-control input-sm" runat="server" placeholder="PRODUCCION ACTUAL"></asp:TextBox>
                             </div>
                    </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                        <label for="dia_p_trans" class="col-lg-8 control-label">DIAS PROG. TRANSPORTE:</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="dia_p_trans" runat="server" CssClass="form-control input-sm" placeholder="00.00"></asp:TextBox>
                        </div>
                            <br />
                            <br />
                        <label for="dia_p_op" class="col-lg-8 control-label">DIAS PROG. OPERACION:</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="dia_p_op" runat="server" CssClass="form-control input-sm" placeholder="00.00"></asp:TextBox>
                        </div>
                            <br />
                            <br />                        
                            <label for="dia_p_tot" class="col-lg-8 control-label">DIAS PROG. TOTALES:</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="dia_p_tot" runat="server" CssClass="form-control input-sm" placeholder="00.00"></asp:TextBox>
                        </div>
                            <br />
                            <br />                        
                            <label for="dia_r_trans" class="col-lg-8 control-label">DIAS REALES TRANSPORTE:</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="dia_r_trans" runat="server" CssClass="form-control input-sm" placeholder="00.00"></asp:TextBox>
                        </div>
                            <br />
                            <br />                        
                            <label for="dia_r_op" class="col-lg-8 control-label">DIAS REALES OPERACION:</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="dia_r_op" runat="server" CssClass="form-control input-sm" placeholder="00.00"></asp:TextBox>
                        </div>
                            <br />
                            <br />                        
                            <label for="dia_r_real" class="col-lg-8 control-label">DIAS REAL TOTALES:</label>
                        <div class="col-lg-4">
                            <asp:TextBox ID="dia_r_real" runat="server" CssClass="form-control input-sm" placeholder="00.00"></asp:TextBox>
                        </div>
                            <br />
                            <br />
                    </div>
                        </div>

                    <div class="panel panel-default">
                        <div class="panel-heading text-center">OBJETIVO:</div>
                        <div class="panel-body">
                        <div class="col-lg-12">
                            <textarea runat="server" class="form-control" rows="3" id="objetivo" style="margin: 0px -0.84375px 0px 0px;"></textarea>
                        </div> 
                    </div>
                        </div> 

                    <div class="panel panel-default">
                        <div class="panel-heading text-center">OPERACION ACTUAL:</div>
                        <div class="panel-body">
                        <div class="col-lg-12">
                            <textarea runat="server" class="form-control" rows="3" id="operacion_actual" style="margin: 0px -0.84375px 0px 0px;"></textarea>
                        </div> 
                    </div>
                        </div>

                   <div class="panel panel-default">
                        <div class="panel-heading text-center">PROGRAMA:</div>
                        <div class="panel-body">
                        <div class="col-lg-12">
                            <textarea runat="server" class="form-control" rows="3" id="programa" style="margin: 0px -0.84375px 0px 0px;"></textarea>
                        </div> 
                    </div>
                        </div>

                   <div class="panel panel-default">
                        <div class="panel-body">
                                 <label for="isp" class="col-lg-3 control-label">ISP:</label>
                                 <div class="col-lg-9">
                                     <asp:DropDownList CssClass="form-control input-sm" ID="isp" runat="server"></asp:DropDownList>
                                 </div>
                             <br />
                             <br />
                                 <label for="ip" class="col-lg-3 control-label">IP:</label>
                                 <div class="col-lg-9">
                                     <asp:DropDownList CssClass="form-control input-sm" ID="ip" runat="server"></asp:DropDownList>
                                 </div>
                             <br />
                             <br />
                                 <label for="c" class="col-lg-3 control-label">C:</label>
                                 <div class="col-lg-9">
                                     <asp:DropDownList CssClass="form-control input-sm" ID="c" runat="server"></asp:DropDownList>
                                 </div>
                             <br />
                             <br />
                        </div>
                   </div>

                </div>

                <!--Formulario complementario de captura-->
                <div class="col-lg-6">
                    <div class="panel panel-warning">
                        <div class="panel-heading text-center"><h4>DATOS COMPLEMENTARIOS DE CAPTURA</h4></div>
                        <div class="panel-body">
                            <label for="pozo" class="col-lg-4 control-label">POZO:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="pozo" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <label for="macropera" class="col-lg-4 control-label">MACROPERA:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="macropera" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <label for="sector" class="col-lg-4 control-label">SECTOR:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="sector" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <label for="proftotal" class="col-lg-6 control-label ">PROF. TOTAL(MD):</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="proftotal" runat="server" CssClass="form-control input-sm" placeholder="PROFUNDIDAD TOTAL (MD)"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                           
                            <label for="profvert" class="col-lg-6 control-label">PROF. VERTICAL(MV):</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="profvert" runat="server" CssClass="form-control input-sm" placeholder="PROFUNDIDAD VERTICAL (MV)"></asp:TextBox>
                            </div>
                            <br />
                            <br />

                             <label for="seccionvert" class="col-lg-6 control-label">SECCION VERTICAL(VS):</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="seccionvert" runat="server" CssClass="form-control input-sm" placeholder="SECCION VERTICAL (VS)"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <!-- aqui empece xD-->

                            <label for="tipodeint" class="col-lg-6 control-label">TIPO DE INTERVENCION:</label>
                            <div class="col-lg-6">
                                <asp:DropDownList ID="tipodeint" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <label for="abrevdeint" class="col-lg-6 control-label">ABREVIATURA INTERVENCION:</label>
                            <div class="col-lg-6">
                                <asp:DropDownList ID="abrevdeint" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <label for="compañia" class="col-lg-4 control-label">COMPAÑIA:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="compañia" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <label for="actgeneral" class="col-lg-4 control-label">ACT.GENERAL:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="actgeneral" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />

                       
                            <label for="costoprog" class="col-lg-6 control-label ">COSTO PROGRAMADO:</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="costprog" CssClass="form-control input-sm" runat="server" placeholder="COSTO PROGRAMADO" TextMode="Number"></asp:TextBox>
                            </div>
                            <br />
                            <br />

                            <label for="fecha_termprog" class="col-lg-6 control-label">FECHA TERM.PROG.:</label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="fecha_termprog" CssClass="form-control input-sm" runat="server" placeholder="Fecha termino prog." TextMode="Date"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <label for="fecha_reto" class="col-lg-4 control-label">FECHA RETO </label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="fecha_reto" CssClass="form-control input-sm" runat="server" placeholder="Fecha reto" TextMode="Date"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <label for="fec_inicio_mov" class="col-lg-4 control-label">FECHA INIC.MOV.:</label>
                             <div class="col-lg-4">
                                 <asp:TextBox runat="server" CssClass="form-control input-sm" ID="fec_inicio_mov" TextMode="Date"></asp:TextBox>
                             </div>
                             <div class="col-lg-4">
                                 <asp:TextBox ID="hora_inic_mov" CssClass="form-control input-sm" runat="server" TextMode="Time" placeholder="00:00"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                            
                            <label for="fec_term_mov" class="col-lg-4 control-label">FEC TERM. MOV:</label>
                             <div class="col-lg-4">
                                 <asp:TextBox runat="server" CssClass="form-control input-sm" ID="fec_term_mov" TextMode="Date"></asp:TextBox>
                             </div>
                             <div class="col-lg-4">
                                 <asp:TextBox ID="hora_term_mov" CssClass="form-control input-sm" runat="server" TextMode="Time" placeholder="00:00"></asp:TextBox>
                             </div>
                             <br />
                             <br />
                            
                            <!-- falta cap equipo AQUI OTRO CUADRO -->
                            <label for="cap_equipo" class="col-lg-4 control-label">CAPACIDAD EQUIPO:</label>
                             <div class="col-lg-8">
                                 <asp:TextBox ID="cap_equipo" CssClass="form-control input-sm" runat="server" placeholder="CAPACIDAD DE EQUIPO"></asp:TextBox>
                             </div>
                            
                    </div>
                        <br />
                    </div>
                    <br />
                    <div class="panel panel-default">
                        <div class="panel-body">


                            <label for="prox_mov" class="col-lg-4 control-label">PROXIMO MOVIM:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="prox_mov" CssClass="form-control input-sm" runat="server" placeholder="Proximo movimiento"></asp:DropDownList>
                            </div>
                             <br />
                             <br />


                            <label for="abrev_intprox" class="col-lg-4 control-label">ABREV.INTERV.PROX:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="abrev_intprox" CssClass="form-control input-sm" runat="server" placeholder="Abrev.interv.Proximo"></asp:DropDownList>
                            </div>
                             <br />
                             <br />

                             <label for="macropera_proxmov" class="col-lg-4 control-label">MACROPERA PROX.MOV:</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="macropera_proxmov" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                            <br />
                            <br />
                            <!-- falta condici prox macrop AQUI OTRO CUADRO -->
                            </div>
                        <br />
                        </div>

                    <div class="panel panel-default">
                        <div class="panel-heading text-center">OP ANTERIOR RESUMEN:</div>
                        <div class="panel-body">
                        <div class="col-lg-12">
                            <textarea runat="server" class="form-control" rows="3" id="op_ant_resumen" style="margin: 0px -0.84375px 0px 0px;"></textarea>
                        </div> 
                    </div>
                        </div> 



                    <div class="panel panel-default">
                        <div class="panel-heading text-center">OBSERVACIONES:</div>
                        <div class="panel-body">
                        <div class="col-lg-12">
                            <textarea runat="server" class="form-control" rows="3" id="observaciones" style="margin: 0px -0.84375px 0px 0px;"></textarea>
                        </div> 
                    </div>
                        </div> 



                    <div class="panel panel-default">
                        <div class="panel-heading text-center">PENDIENTES:</div>
                        <div class="panel-body">
                        <div class="col-lg-12">
                            <textarea runat="server" class="form-control" rows="3" id="pendientes" style="margin: 0px -0.84375px 0px 0px;"></textarea>
                        </div> 
                    </div>
                        </div> 





                        </div>

                <!--Formulario de captura de imagenes-->
                <div class="col-lg-2">
                    <div class="panel panel-success">
                        <div class="panel-heading text-center"><h4>FORMULARIO DE IMAGENES</h4></div>
                        <div class="panel-body">
                            <label for="edo_actual" class="col-lg-3 control-label">ACTUAL</label>
                            <div class="col-lg-9">
                            <input type="file" class="form-control input-sm" runat="server" id="edo_actual" visible="false"/>
                            </div>
                            <br />
                            <br />
                            <label for="edo_prog" class="col-lg-3 control-label">PROG</label>
                            <div class="col-lg-9">
                                <asp:FileUpload CssClass="form-control input-sm" ID="edo_prog" runat="server" placeholder="Estado Programado" Visible="false"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
