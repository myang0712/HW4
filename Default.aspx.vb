
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub calculate_Click(sender As Object, e As EventArgs) Handles calculate.Click
        'Declare Variables
        Dim hourlyWage As Double
        Dim hoursWorked As Double
        Dim pretaxDeduction As Double
        Dim aftertaxDeduction As Double
        Dim pretaxSalary As Double
        Dim aftertaxSalary As Double

        Const STaxRate As Double = 0.18
        Const BTaxRate As Double = 0.22

        'get users numer from textbox
        hourlyWage = CDbl(TBhourlyWage.Text)
        hoursWorked = CDbl(TBnumberOfHour.Text)
        pretaxDeduction = CDbl(TBpreTaxDeduction.Text)
        aftertaxDeduction = CDbl(TBafterTaxDeduction.Text)

        'calculate pretax salary
        pretaxSalary = hourlyWage * hoursWorked + pretaxDeduction

        'test if pre-tax salary is greater than $500
        If pretaxSalary < 500 Then
            aftertaxSalary = pretaxSalary * (1 - STaxRate) - aftertaxDeduction
        ElseIf pretaxSalary >= 500 Then
            aftertaxSalary = pretaxSalary * (1 - BTaxRate) - aftertaxDeduction
        End If

        salary.Text = FormatCurrency(aftertaxSalary)

    End Sub

    Protected Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click

        'clear all values
        TBhourlyWage.Text = ""
        TBnumberOfHour.Text = ""
        TBpreTaxDeduction.Text = ""
        TBafterTaxDeduction.Text = ""
        salary.Text = ""

    End Sub

End Class