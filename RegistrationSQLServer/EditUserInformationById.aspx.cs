using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationSQLServer
{
    public partial class EditUserInformationById : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Clear();
                int selectedID = int.Parse(Request.QueryString["id"]);
                BusinessLayer.UserInformation selectedUserInformation = DBLayer.DBUtilities.SelectUserInformationById(selectedID);
                firstNameTextBox.Text = selectedUserInformation.FirstName;
                lastNameTextBox.Text = selectedUserInformation.LastName;
                addressTextBox.Text = selectedUserInformation.Address;
                cityTextBox.Text = selectedUserInformation.City;
                stateOrProvinceTextBox.Text = selectedUserInformation.Province;
                zipCodeTextBox.Text = selectedUserInformation.PostalCode;
                countryTextBox.Text = selectedUserInformation.Country;
            }
        }

        public void Clear()
        {
            firstNameTextBox.Text = lastNameTextBox.Text = addressTextBox.Text = cityTextBox.Text = stateOrProvinceTextBox.Text = zipCodeTextBox.Text = countryTextBox.Text = "";
            lblResultMessage.Text = "";
        }

        protected void UpdateInfoButton_OnClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                BusinessLayer.UserInformation userInfo = new BusinessLayer.UserInformation();

                int selectedID = int.Parse(Request.QueryString["id"]);
                BusinessLayer.UserInformation newUserInfo = new BusinessLayer.UserInformation();
                newUserInfo.FirstName = Server.HtmlEncode(firstNameTextBox.Text);
                newUserInfo.LastName = Server.HtmlEncode(lastNameTextBox.Text);
                newUserInfo.Address = Server.HtmlEncode(addressTextBox.Text);
                newUserInfo.City = Server.HtmlEncode(cityTextBox.Text);
                newUserInfo.Province = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                newUserInfo.PostalCode = Server.HtmlEncode(zipCodeTextBox.Text);
                newUserInfo.Country = Server.HtmlEncode(countryTextBox.Text);

                //Clear();

                if (DBLayer.DBUtilities.UpdateUserInformationById(selectedID, newUserInfo) == 1)
                {
                    this.lblResultMessage.Text = "The user information was successfully updated";
                }
                else
                    this.lblResultMessage.Text = "There was an error on updating the user information!";
            }
        }

        protected void InsertUserInformationButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}