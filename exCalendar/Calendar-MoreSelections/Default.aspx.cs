using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exCalendar.Calendar_MoreSelections
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.VisibleDate = Calendar1.TodaysDate;
                ddl.SelectedIndex = Calendar1.VisibleDate.Month - 1;
            }
            lblTodaysDate.Text = "Today's Date is " + Calendar1.TodaysDate.ToShortDateString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblSelectedUpadte();
            lblCountUpadte();
            txtClear();
        }

        private void lblSelectedUpadte()
        {
            if (Calendar1.SelectedDate != DateTime.MinValue)
                lblSelected.Text = "The date selected is " + Calendar1.SelectedDate.ToShortDateString();
        }
        private void lblCountUpadte()
        {
            lblCount.Text = "Count of Days Selected: " + Calendar1.SelectedDates.Count.ToString();
        }
        private void txtClear()
        {
            txtStart.Text = "";
            txtEnd.Text = "";
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDates.Clear();
            lblSelectedUpadte();
            lblCountUpadte();
            Calendar1.VisibleDate = new DateTime(Calendar1.VisibleDate.Year, Int32.Parse(ddl.SelectedItem.Value), 1);
            txtClear();
        }

        protected void btnTgif_Click(object sender, EventArgs e)
        {
            #region 选中某年某月日历控件的所有周五日期
            int currMonth = Calendar1.VisibleDate.Month;
            int currYear = Calendar1.VisibleDate.Year;
            Calendar1.SelectedDates.Clear();

            for (int i = 1; i <= System.DateTime.DaysInMonth(currYear, currMonth); i++)
            {
                DateTime date = new DateTime(currYear, currMonth, i);
                if (date.DayOfWeek == DayOfWeek.Friday)
                    Calendar1.SelectedDates.Add(date);
            }
            #endregion

            lblSelectedUpadte();
            lblCountUpadte();
            txtClear();
        }

        protected void btnRange_Click(object sender, EventArgs e)
        {
            #region 选中某年某月日历控件指定两个日子的所有日期
            int currMonth = Calendar1.VisibleDate.Month;
            int currYear = Calendar1.VisibleDate.Year;
            Calendar1.SelectedDates.Clear();

            DateTime StartDate = new DateTime(currYear, currMonth,
                Int32.Parse(txtStart.Text));
            DateTime EndDate = new DateTime(currYear, currMonth,
                Int32.Parse(txtEnd.Text));
            Calendar1.SelectedDates.SelectRange(StartDate, EndDate);
            #endregion

            lblSelectedUpadte();
            lblCountUpadte();
            
        }
    }
}