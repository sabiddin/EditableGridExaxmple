using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student {
    public int StudentID { get; set; }
    public string FirstName { get; set; }
    public string LastName  { get; set; }
    public string MiddleName { get; set; }
    public int Age { get; set; }
    public string Sex { get; set; }
}

public partial class Pages_Student : System.Web.UI.Page
{
    List<Student> students = new List<Student>() {
         new Student (){ StudentID =1, FirstName="Zainul", MiddleName = "Zainul",LastName="Syed", Age=25, Sex="Male"}
        ,new Student (){ StudentID =2, FirstName="Zainul 2", MiddleName = "Zainul 2",LastName="Syed 2", Age=25, Sex="Male"}
        ,new Student (){ StudentID =3, FirstName="Zainul 3", MiddleName = "Zainul 3",LastName="Syed 3", Age=25, Sex="Male"}
        ,new Student (){ StudentID =4, FirstName="Zainul 4", MiddleName = "Zainul 4",LastName="Syed 4", Age=25, Sex="Male"}
    };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        gvStudents.DataSource = students;
        gvStudents.DataBind();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //  int count = 0;        
        List<Student> selectedStudents = new List<Student>();
        foreach (GridViewRow row in gvStudents.Rows)
        {            
            CheckBox chkSelect = row.FindControl("chkSelect") as CheckBox;
            Label lblStudentID = row.FindControl("lblStudentID") as Label;
            Label lblFirstName = row.FindControl("lblFirstName") as Label;
            Label lblMiddleName = row.FindControl("lblMiddleName") as Label;
            Label lblLastName = row.FindControl("lblLastName") as Label;
            Label lblAge = row.FindControl("lblAge") as Label;
            Label lblSex = row.FindControl("lblSex") as Label;
            Student student = new Student();
            if (chkSelect.Checked)
            {
                //     count++;                
                if (lblStudentID!=null)
                {
                    student.StudentID = Convert.ToInt32(lblStudentID.Text); 
                }
                if (lblFirstName!=null)
                {
                    student.FirstName = lblFirstName.Text; 
                }
                if (lblMiddleName!=null)
                {
                    student.MiddleName = lblMiddleName.Text; 
                }
                if (lblLastName!=null)
                {
                    student.LastName = lblLastName.Text; 
                }
                if (lblAge!=null)
                {
                    student.Age = Convert.ToInt32(lblAge.Text); 
                }
                if (lblSex!=null)
                {
                    student.Sex = lblSex.Text; 
                }            
                selectedStudents.Add(student);
            }            
        }
        StringBuilder builder = new StringBuilder("You have Selected <br />");
        foreach (Student selectedStudent in selectedStudents)
        {
            builder.Append($"ID: {selectedStudent.StudentID.ToString()} ");
            builder.Append($"FirstName: {selectedStudent.FirstName} ");
            builder.Append($"MiddleName: {selectedStudent.MiddleName} ");
            builder.Append($"LastName: {selectedStudent.LastName} ");
            builder.Append($"Age: {selectedStudent.Age.ToString()} ");
            builder.Append($"Sex: {selectedStudent.Sex}");
            builder.Append("<br/>");

        }
        lblMessage.Text = selectedStudents.Count >= 0 ? builder.ToString():"";
    }

    protected void gvStudents_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {

        }
        if (e.CommandName == "Cancel")
        {

        }
        if (e.CommandName == "Update")
        {

        }
    }

    protected void gvStudents_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {        
        GridViewRow row = gvStudents.Rows[e.RowIndex];            
        Label lblStudentID = row.FindControl("lblStudentID") as Label;
        TextBox txtFirstName = row.FindControl("txtFirstName") as TextBox;
        TextBox txtMiddleName = row.FindControl("txtMiddleName") as TextBox;
        TextBox txtLastName = row.FindControl("txtLastName") as TextBox;
        TextBox txtAge = row.FindControl("txtAge") as TextBox;
        TextBox txtSex = row.FindControl("txtSex") as TextBox;
        Student studentNewValues = students.FirstOrDefault(s=>s.StudentID==Convert.ToInt32(lblStudentID.Text));
        //     count++;                
        if (lblStudentID != null)
        {
            studentNewValues.StudentID = Convert.ToInt32(lblStudentID.Text);
        }
        if (txtFirstName != null)
        {
            studentNewValues.FirstName = txtFirstName.Text;
        }
        if (txtMiddleName != null)
        {
            studentNewValues.MiddleName = txtMiddleName.Text;
        }
        if (txtLastName != null)
        {
            studentNewValues.LastName = txtLastName.Text;
        }
        if (txtAge != null)
        {
            studentNewValues.Age = Convert.ToInt32(txtAge.Text);
        }
        if (txtSex != null)
        {
            studentNewValues.Sex = txtSex.Text;
        }

        gvStudents.EditIndex = -1;
        BindData();
    }

protected void gvStudents_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView grid = sender as GridView;
        grid.EditIndex = e.NewEditIndex;
        BindData();
    }

    protected void gvStudents_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView grid = sender as GridView;
        e.Cancel = true;
        grid.EditIndex = -1;        
    }

    protected void gvStudents_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        BindData();
    }
}