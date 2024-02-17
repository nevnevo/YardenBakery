﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="YardenLaviUnfus.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Anton&family=Mukta:wght@200;300;400;500;600;700;800&family=Protest+Guerrilla&family=Protest+Strike&display=swap');
        body {
            background-color: #00AAD2;
        }

        .button {
            font-size: 42px;
            font-family: "Anton", sans-serif;
            font-weight: 400;
            font-style: normal;
            background-color: #ed2a2a;
            width: 20%;
            margin-bottom: 20px; /* Add margin-bottom to create space between buttons */
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .button:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.8), 0 15px 30px 0 rgba(0, 0, 0, 0.25);
            cursor: url('data:image/x-icon;base64,AAACAAEAICAAAAAAAACoEAAAFgAAACgAAAAgAAAAQAAAAAEAIAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAFAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAFAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQAAABMAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABMAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATAAAAJgAAADgAAAA4AAAAOAAAADgAAAA4AAAAOAAAADgAAAA4AAAAJgAAABMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAABwAAAA1AAAATAAAAEwAAABMAAAATAAAAEwAAABMAAAATAAAAEwAAAA1AAAAHAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAAUwAAAEEAAAAlAAAACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAP///////////////////////////////////////////wAAAP8AAABVAAAASwAAAC8AAAATAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAA////////////////////////////////////////////AAAA/wAAAFUAAABSAAAAOAAAABwAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAP//////////////////////////////////////////////////////AAAA/wAAAFQAAABBAAAAJQAAAAkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAA//////////////////////////////////////////////////////8AAAD/AAAAVQAAAEsAAAAvAAAAEwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAP///////////////////////////////////////////////////////////wAAAP8AAABVAAAAUgAAADYAAAAZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAMAAAA/////////////////////////////////////////////////////////////////wAAAP8AAABUAAAAOAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQAAAP//////////////////////////////////////////////////////////////////////AAAA/wAAAFQAAAA4AAAAHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAAA//////////////////////////////////////////////////////////////////////8AAAD/AAAAUQAAADUAAAAZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////wAAAP///////////////////////////////////////////////////////////wAAAP8AAABIAAAALAAAABMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////////////////AAAA////////////////////////////////////////////////////////////AAAA/wAAADUAAAAcAAAACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////wAAAP8AAAD///////////////////////////////////////////8AAAD///////////8AAAD/AAAAHwAAAAwAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/wAAAP8AAAD/AAAACAAAAP///////////wAAAP///////////wAAAP///////////wAAAP//////AAAA/wAAABUAAAAMAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABAAAA////////////AAAA////////////AAAA////////////AAAA/wAAAP8AAAAPAAAABgAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////8AAAD///////////8AAAD/AAAA/wAAAP8AAAAiAAAABgAAAAMAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/AAAA/wAAAP///////////wAAAP8AAABUAAAAOAAAABwAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////AAAA/wAAAFEAAAA1AAAAGQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////8AAAD/AAAARQAAACwAAAATAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////wAAAP8AAAAvAAAAHAAAAAkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////AAAA/wAAABUAAAAMAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/wAAAP8AAAAGAAAABgAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA///////////////////////////////////////////////////////////4Af//+AH///gB///wAP//8AD//+AA///gAH//wAB//8AAf/+AAH//AAB//wAAf/8QAP//8AH///AH///4H////h////4f///+H////h////8///8='), auto;
        }

        h1 {
            text-align: center;
            font-size: 62px;
            color: #000000;
            font-family: "Anton", sans-serif;
            font-weight: 400;
            font-style: normal;
        }

        h2 {
            text-align: center;
            font-size: 42px;
            color: #000000;
            font-family: "Anton", sans-serif;
            font-weight: 400;
            font-style: normal;
        }
        td{
            font-size:36px;
            text-align:center;
            font-family: "Protest Strike", sans-serif;
            font-weight: 400;
            font-style: normal;
            width:5%;
}
        }

        img{
            width: 500px;
            height: 200px;
            margin: auto; /* Center the image horizontally */
            display: block; /* Ensure block-level display for proper margin handling */
        }
        }
    </style>

    <h1>Yarden Lavi Unfus bakery menu:</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <center><table>
            <td>Chocolate Cake (Very Recommended!!!):</td>
            <td>English Cake(idfk what is this):</td>
            <td>10 Chocolate balls (zesty asf):</td>
            <td>10 coockies wraped with any sauce:</td>
            <td>20 Butter cookies(fat fuck):</td>
            <td>10 Amsterdam cookies(NO DRUGS!!):</td>
           
            
            
        </tr>
        <tr>
            <td>30₪</td>
            <td>30₪</td>
            <td>20₪</td>
            <td>20₪</td>
            <td>30₪</td>
            <td>25₪</td>
        </tr>
        </table>
        </center>
        <img style="position:absolute; left:37.5%; height:60%; object-fit:cover; margin: 3% 15%""; src="pics/cake.jpg"/>
    <div style="margin: 100px 200px;">
        <button id="MenuButton" class="button" ><a href="HomePage.aspx"; style="text-decoration-line:none; color:black">Back to HOME</a></button></br></br></br>
       <button id="MenuButton" class="button" ><a href="About.aspx"; style="text-decoration-line:none; color:black">About us</a></button></br></br></br>
        <button id="MenuButton" class="button" ><a href="Contact.aspx"; style="text-decoration-line:none; color:black">Contact</a></button>


    </div>
    
    


</asp:Content>