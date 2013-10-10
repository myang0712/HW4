<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Salary Calculator</title>
    <link rel="stylesheet" type="text/css" href="./hw4.css" /> 
    </head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCFFFF">
    <h2>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Salary Calculator<br />
        <br />
    </h2>
        
        <p style="margin-left: 240px">
        
        Hourly Wage:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TBhourlyWage" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBhourlyWage" ErrorMessage="*Please enter hourly wage."></asp:RequiredFieldValidator>
        <br /><br />

        Hours Worked:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TBnumberOfHour" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBnumberOfHour" ErrorMessage="*Please enter hours worked"></asp:RequiredFieldValidator>
        <br />
        <br />
        Befor Tax Deduction:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TBpreTaxDeduction" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBafterTaxDeduction" ErrorMessage="*Please enter before tax deduction"></asp:RequiredFieldValidator>
        <br />
        <br />
        After Tax Deduction:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TBafterTaxDeduction" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBafterTaxDeduction" ErrorMessage="*Please enter after tax deduction"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="calculate" runat="server" style="height: 26px" Text="Calculate" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="clear" runat="server" Text="Clear" />
        <br />
        <br />
        Your Salary is : <asp:Label ID="salary" runat="server"></asp:Label>
            <br />
            <br />
        <br />

        </p>

    </div>
    </form>
</body>
</html>

