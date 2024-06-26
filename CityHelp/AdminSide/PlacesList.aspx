<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PlacesList.aspx.cs" Inherits="CityHelp.AdminSide.PlacesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainBody" runat="server">
    <style>
        .listPlace {
            margin-left: 10px;
            margin-right: 20px;
        }
    </style>
    <div style="margin-top:50px;">
        <h2 style="text-align: center"><b>Places List</b></h2>
        <br />
        <hr />
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center;">
                <b>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label></b>
            </div>
            <div class="col-md-4" style="text-align: right; padding-right: 35px; padding-bottom: 10px">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add new" Class="btn btn-primary" />
            </div>
        </div>
        <div class="listPlace">
            <asp:GridView ID="gvPlaces" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-hover" OnRowCommand="gvPlaces_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Place Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" />
                    <asp:BoundField DataField="ContactNO" HeaderText="Contact No" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlEdit" runat="server" NavigateUrl='<%#"~/AdminSide/Places.aspx?Id=" + Eval("Id").ToString() %>'>Edit</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" CommandName="DeleteRecord" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-warning" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
