<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="siteASPMaratona.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <asp:Button ID="btn_excel" runat="server" OnClick="btn_excel_Click" Text="Exportar Lista Para Excel" />
        <br />
        <br />
        <asp:Button ID="btn_word" runat="server" OnClick="btn_word_Click" Text="Exportar Lista Para Word" />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="num_dorsal" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="282px" Width="870px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" PageSize="20">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="num_dorsal" HeaderText="Nº Atleta / Dorsal" InsertVisible="False" ReadOnly="True" SortExpression="num_dorsal" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />    
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="nome_atleta" HeaderText="Nome do Atleta" SortExpression="nome_atleta" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/edit.png" HeaderText="Editar dados Atleta" UpdateImageUrl="~/images/save.png">
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:CommandField>
    </Columns>
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#F7F7DE" />
    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FBFBF2" />
    <SortedAscendingHeaderStyle BackColor="#848384" />
    <SortedDescendingCellStyle BackColor="#EAEAD3" />
    <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Maratona22ConnectionString %>" SelectCommand="SELECT * FROM [atleta]" DeleteCommand="DELETE FROM [atleta] WHERE [num_dorsal] = @num_dorsal" InsertCommand="INSERT INTO [atleta] ([nome_atleta], [email]) VALUES (@nome_atleta, @email)" UpdateCommand="UPDATE [atleta] SET [nome_atleta] = @nome_atleta, [email] = @email WHERE [num_dorsal] = @num_dorsal">
    <DeleteParameters>
        <asp:Parameter Name="num_dorsal" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome_atleta" Type="String" />
        <asp:Parameter Name="email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome_atleta" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="num_dorsal" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

