﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlReference.ascx.cs" Inherits="CCH_Web.CCHomepage.Controls.CtrlReference" %>
<section id="sectionReference" style="padding-top: 70px;">
<div class="container">
    <div id="CtrlReferencePanel">
        
           <%--  <asp:PlaceHolder runat="server" ID="PlaceHolderRefBlock"></asp:PlaceHolder>    --%>  
        <h2>Komu CreditCheck <span class="greenUnderline"> setří </span> čas a peníze ?</h2>
        <div class="row">
            <div class="col-xs-6 col-sm-2"><img src="~/Images/References/brand.png"></div>
            <div class="col-xs-6 col-sm-2"><img src="~/Images/References/brand.png"></div>
            <div class="col-xs-6 col-sm-2"><img src="~/Images/References/brand.png"></div>
            <div class="col-xs-6 col-sm-2"><img src="~/Images/References/brand.png"></div>
            <div class="col-xs-6 col-sm-2"><img src="~/Images/References/brand.png"></div>
            <div class="col-xs-6 col-sm-2"><img src="~/Images/References/brand.png"></div>

        </div>  </div>
</div>
</section>

<script>

    var x = 2;
    var y = 1;
    // Musíme přičíst 1 referenci navíc. Je to kvůli prohození posledního bloku za první. 
    // Pokud tam nebude blank space na konci, tak to nefunguje jak má
    var pocetReferenciVeSlideru = <%= pocetReferenci + 1 %>;

    var homepageRefTimer = setInterval(function() {
        var s = "ctl00_MainContent_Reference1_RefBlock_" + x;
        var p = "ctl00_MainContent_Reference1_RefBlock_" + y;
        $(document.getElementById(p)).hide();
        $(document.getElementById(s)).slideDown(2000);
        x++;
        y++;
        if (y == pocetReferenciVeSlideru) {
            y = 1;
        }
        if (x == pocetReferenciVeSlideru) {
            x = 1;
            y = <%= pocetReferenci %>;
        }
    }, 8000);


</script>