<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="siteASPMaratona.adminpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height: 805px; width: 882px">
        <br />
        <asp:Button
            
            ID="btn_excel" runat="server" OnClick="btn_excel_Click" type="button" class="btn btn-success" Text="Exportar lista para Excel" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_word" runat="server" OnClick="btn_word_Click" type="button" class="btn btn-primary" Text="Exportar lista para Word" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="num_dorsal" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="282px" Width="870px" AllowPaging="True" AllowSorting="True" PageSize="20">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="num_dorsal" HeaderText="Nº Atleta / Dorsal" InsertVisible="False" ReadOnly="True" SortExpression="num_dorsal" ApplyFormatInEditMode="True">
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Wrap="True" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="nome_atleta" HeaderText="Nome do Atleta" SortExpression="nome_atleta">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/edit.png" HeaderText="Editar dados Atleta" UpdateImageUrl="~/images/save.png">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:TemplateField></asp:TemplateField>
                <asp:CommandField>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:TemplateField>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        &nbsp;&nbsp;&nbsp;
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

