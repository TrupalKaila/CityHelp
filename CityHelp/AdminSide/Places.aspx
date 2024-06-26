<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Places.aspx.cs" Inherits="CityHelp.AdminSide.Places" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">
    <div>
        <div class="container" style="padding-top: 50px;">
            <div class="row">
                <div class="col-md-12" style="text-align: center;">
                    <h1>
                        <asp:Label ID="lblPageHeader" runat="server"/>
                        <hr />
                    </h1>
                    <asp:Label runat="server" ID="lblMessage" />
                </div>
            </div>
            <div class="form-group row">
                <label for="txtName" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Enter Name" />
                    <br />
                </div>

                <label for="txtRating" class="col-sm-2 col-form-label">Rating</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" ID="txtRating" CssClass="form-control" placeholder="Enter Rating" />
                    <br />
                </div>
                <label for="txtAddress" class="col-sm-2 col-form-label">Address</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" placeholder="Enter Address" />
                    <br />
                </div>
                <label for="txtContactNo" class="col-sm-2 col-form-label">Contact Number</label>
                <div class="col-sm-10">
                    <asp:TextBox runat="server" ID="txtContactNo" CssClass="form-control" placeholder="Enter Contact Number" />
                    <br />
                </div>

                <label for="txtCategory" class="col-sm-2 col-form-label">Category</label>
                <div class="col-sm-10">
                    <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control">
                        <asp:ListItem Text="Restaurant" Value="Restaurant"></asp:ListItem>
                        <asp:ListItem Text="Bank" Value="Bank"></asp:ListItem>
                        <asp:ListItem Text="Tourist Attraction" Value="Tourist Attraction"></asp:ListItem>
                        <asp:ListItem Text="Theatre" Value="Theatre"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>

                <label for="txtImage" class="col-sm-2 col-form-label">Image</label>
                <div class="col-sm-10">
                    <asp:Image runat="server" ID="imgURL" />
                    <asp:FileUpload ID="fuImageURL" runat="server" />
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10"></div>
                <div class="col-sm-2 pull-right">
                    <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-success pull-right" OnClick="btnSave_Click" />
                    <asp:HyperLink ID="hlCancel" runat="server" Text="Cancel" NavigateUrl="~/AdminSide/PlacesList.aspx" CssClass="btn btn-danger" />
                </div>
            </div>
        </div>
    </div>
    <div style="display:none;">
        <asp:HiddenField ID="hdnURL" runat="server"/>
    </div>
</asp:Content>
