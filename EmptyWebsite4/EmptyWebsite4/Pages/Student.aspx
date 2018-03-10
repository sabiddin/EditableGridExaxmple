<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Pages_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label  ID="lblMessage" Font-Bold="true" ForeColor="Red" Visible="true" runat="server" />
            <asp:GridView runat="server" ID="gvStudents" AutoGenerateColumns="false" OnRowCommand="gvStudents_RowCommand" OnRowEditing="gvStudents_RowEditing" OnRowCancelingEdit="gvStudents_RowCancelingEdit" OnRowUpdating="gvStudents_RowUpdating" OnRowUpdated="gvStudents_RowUpdated">
                <HeaderStyle BackColor="Brown" ForeColor="White" Font-Names="Arial" Font-Size="12px" Font-Bold="true"/>        
                <RowStyle BackColor="White" ForeColor="Black" Font-Names="Arial" Font-Size="12px"/>                  
                
                <AlternatingRowStyle BackColor="#99ccff" ForeColor="Black" Font-Names="Arial" Font-Size="12px"/>            
                <Columns>
                    <asp:TemplateField>                             
                        <HeaderTemplate>
                            <asp:Label Text="ID" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblStudentID" Text='<%#Eval("StudentID") %>' runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:Label ID="lblStudentID" Text='<%#Eval("StudentID") %>' runat="server" />
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblStudentID" Text='<%#Eval("StudentID") %>' runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>                              
                        <HeaderTemplate>
                            <asp:Label Text="First Name" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblFirstName" Text='<%#Eval("FirstName") %>' runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:Label ID="lblFirstName" Text='<%#Eval("FirstName") %>' runat="server" />
                        </AlternatingItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox ID="txtFirstName" Text='<%#Eval("FirstName") %>' runat="server" />
                         </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>                                                
                        <HeaderTemplate>
                            <asp:Label Text="Middle Name" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblMiddleName" Text='<%#Eval("MiddleName") %>' runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:Label ID="lblMiddleName" Text='<%#Eval("MiddleName") %>' runat="server" />
                        </AlternatingItemTemplate>
                          <EditItemTemplate>
                             <asp:TextBox ID="txtMiddleName" Text='<%#Eval("MiddleName") %>' runat="server" />
                         </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>                                                
                        <HeaderTemplate>
                            <asp:Label Text="Last Name" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblLastName" Text='<%#Eval("LastName") %>' runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:Label ID="lblLastName" Text='<%#Eval("LastName") %>' runat="server" />
                        </AlternatingItemTemplate>
                          <EditItemTemplate>
                             <asp:TextBox ID="txtLastName" Text='<%#Eval("LastName") %>' runat="server" />
                         </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>                                                
                        <HeaderTemplate>
                            <asp:Label Text="Age" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblAge" Text='<%#Eval("Age") %>' runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:Label ID="lblAge" Text='<%#Eval("Age") %>' runat="server" />
                        </AlternatingItemTemplate>
                          <EditItemTemplate>
                             <asp:TextBox ID="txtAge" Text='<%#Eval("Age") %>' runat="server" />
                         </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>                                                
                        <HeaderTemplate>
                            <asp:Label Text="Sex" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSex" Text='<%#Eval("Sex") %>' runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:Label ID="lblSex" Text='<%#Eval("Sex") %>' runat="server" />
                        </AlternatingItemTemplate>
                          <EditItemTemplate>
                             <asp:TextBox ID="txtSex" Text='<%#Eval("Sex") %>' runat="server" />
                         </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>                                                
                        <HeaderTemplate>
                            <asp:Label Text="Select" runat="server" />
                        </HeaderTemplate>
                        <ItemTemplate>                            
                            <asp:CheckBox  ID="chkSelect" runat="server" />
                        </ItemTemplate>   
                        <AlternatingItemTemplate>                            
                            <asp:CheckBox  ID="chkSelect"  runat="server" />
                        </AlternatingItemTemplate>                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button Text="Edit" ID="btnEdit" CommandName="Edit" runat="server" />
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <asp:Button Text="Edit" ID="btnEdit" CommandName="Edit" runat="server" />
                        </AlternatingItemTemplate>
                         <EditItemTemplate>
                             <asp:Button Text="Save" ID="btnSave" CommandName="Update"  CommandArgument='<%#Eval("StudentID") %>' runat="server" />
                             <asp:Button Text="Cancel" ID="btnCancel" runat="server"  CommandName="Cancel"/>
                         </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button Text="Submit" runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
