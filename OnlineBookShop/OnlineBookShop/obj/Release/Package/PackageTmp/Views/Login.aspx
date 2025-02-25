﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineBookShop.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
                <div class ="col-md-4">
                    <form id="form1" runat="server">
                        <div class="mt-3 text-center">
                            
                             <label for="" class="form-label">線上書店</label>
                        </div>
                        <div class="mt-3">
                            <label for="" class="form-label">User Name</label>
                            <input type="email" placeholder="Your Email Here" autocomplete="off" class="form-control" runat="server" id="UNameTb" />
                        </div>
                        
                        <div class="mt-3">
                            <label for="" class="form-label">Password</label>
                            <input type="password" placeholder="Password" autocomplete="off" class="form-control" runat="server" id="PasswordTb" />
                        </div>
                        
                        <div class="mt-3 d-grid">
                             <asp:Label ID="ErrMsg" runat="server" class="text-danger"></asp:Label>
                            <asp:Button Text="Login" runat="server" class="btn-success btn" ID="LoginBtn" OnClick="LoginBtn_Click" />
                        </div>
                    </form>
                </div>
            <div class="col-md-4">

            </div>
         </div>
   </div>
</body>
</html>
