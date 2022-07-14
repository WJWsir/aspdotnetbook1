using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exCalendar.Calendar_SelectionChanged
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblTodaysDate.Text = "Today's Date is " + Calendar1.TodaysDate.ToShortDateString();
            if (Calendar1.SelectedDate != DateTime.MinValue)
                lblSelected.Text = "The date selected is " + Calendar1.SelectedDate.ToShortDateString();
            lblCountUpadte();
        }

        private void lblCountUpadte()
        {
            lblCount.Text = "Count of Days Selected: " + Calendar1.SelectedDates.Count.ToString();
        }
    }
}