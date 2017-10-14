<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="deafults.aspx.cs" Inherits="AMS.VMS.Pages.deafults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Resourcs/CSS/Login.css" rel="stylesheet" />

    <script src="../Resourcs/NivoSlider/jquery.nivo.slider.js"></script>
     <link href="../Resourcs/NivoSlider/nivo-slider.css" rel="stylesheet" />
     <script src="../Resourcs/TextAnimator/jquery.simple-text-rotator.js"></script>
     <link href="../Resourcs/TextAnimator/simpletextrotator.css" rel="stylesheet" />
     <script src="../Resourcs/TextAnimator/typed.min.js"></script>

   <style>
        label.error {
            color: red;
            font-family: bookman old style;
            font-size: 15px;
        }

        .msgSuccess {
            color: green;
            font-family: bookman old style;
            font-size: 15px;
            font-weight: bold;
        }
        .typewriter {
            font-size: 30px;
            padding: 15px;
            font-family: Oldman Bookstyle;
            color: #000080;
            border: 2px solid #25383C;
            text-align: center;
        }
        .features {
            background: #FDEEF4;
            border: 2px dashed #008080;
            color: #254117;
            font-family: century gothic;
            font-size: 30px;
            font-weight: bold;
            padding: 15px;
            text-align: center;
        }
    </style>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        
        
        <asp:Button ID="Button1" runat="server" CssClass="Login_out" Text="LOG OUT" OnClick="Button1_Click" />
        <h3 class="msgLogin">Welcome <asp:Label ID="lblWlcmome" runat="server" Text=""></asp:Label></h3>
         
       
        
     <div class="container">
        <p class="typewriter">Vehicle Management System.</p>
        <h1 class="features">You Can <span class="rotate">Add Vehicle, View Vehicle, Add Driver, View Driver, Purchase Parts, Maintains Vehilces</span> With This Vehicle Management System</h1>
    </div>
        
        <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider">
            
           <%-- <img src="../Resourcs/Images/1.jpg" />
            <img src="../Resourcs/Images/2.jpg" />
             <img src="../Resourcs/Images/3.jpg" />
             <img src="../Resourcs/Images/4.jpg" />--%>
           <%-- <img src="../Resourcs/Images/slide1.jpg" />
            <img src="../Resourcs/Images/slide2.jpg" />
            <img src="../Resourcs/Images/slide3.jpg" />
            <img src="../Resourcs/Images/slide4.jpg" />--%>

            <img src="../Resourcs/Images/slider6.png" />
            <img src="../Resourcs/Images/slide4.jpg" />
            <img src="../Resourcs/Images/slider3.png" />
        </div>
        </div>
        
            
        <nav class="navbar navbar-default">
        <div class="footer container" style="text-align: center; margin-top: 15px; ">
            <p>Copyright &copy; 2016 Code &amp; Design HDC(MIS). All rights reserved.</p>
        </div>
         </nav>                  
    </form>



    <script>

        var text = $('.typewriter').text();


        var length = text.length;
        var timeOut;
        var character = 0;
        //console.log("alert");

        (function typeWriter() {
            timeOut = setTimeout(function () {
                character++;
                var type = text.substring(0, character);
                $('.typewriter').text(type);
                //alert("Javascript is ok now");
                       typeWriter();

                        if (character === length) {
                           clearTimeout(timeOut);
                      }

            }, 100);
        }());

        $(document).ready(function () {
            $('#slider').nivoSlider();
            $(".features .rotate").textrotator({
                animation: "spin",
                speed: 2000
            });
        });
</script>


</asp:Content>
