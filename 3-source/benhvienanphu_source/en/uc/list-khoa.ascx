<%@ Control Language="C#" AutoEventWireup="true" CodeFile="list-khoa.ascx.cs" Inherits="uc_list_khoa" %>
<div class="tab-ul">
    <asp:ListView ID="lstDanhMucYKHoa" runat="server" DataSourceID="odsDanhMucYKHoa"
        EnableModelValidation="True">
        <ItemTemplate>
            <li>
                <a href='<%# progressTitle(Eval("ProjectCategoryName")) + "-ami-" + Eval("ProjectCategoryID") + ".aspx" %>'><%# Eval("ProjectCategoryName") %></a>
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="nav nav-tabs">
                <li>
                    <a href="bai-viet-y-khoa.aspx">TẤT CẢ</a>
                </li>
                <li runat="server" id="itemPlaceholder"></li>
            </ul>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsDanhMucYKHoa" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="18" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    <script>
        var count = $('.nav-tabs > li').length;
        $.each($('.nav-tabs > li'), function () {
            count = count - 1;
            $(this).css("z-index", count);
        })
    </script>
</div>
