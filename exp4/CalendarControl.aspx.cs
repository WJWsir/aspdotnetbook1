using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp4
{
    public partial class CalendarControl : System.Web.UI.Page
    {
        const string SelectedDatesViewStateKey = "SelectedDatesCollection";
        protected List<DateTime> SelectedDates
        {
            get
            {
                if (this.ViewState[SelectedDatesViewStateKey] == null)
                    this.ViewState[SelectedDatesViewStateKey] = new List<DateTime>();
                return this.ViewState[SelectedDatesViewStateKey] as List<DateTime>;
            }
            set
            {
                this.ViewState[SelectedDatesViewStateKey] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var calendars = new List<Calendar>();
                GetControlList<Calendar>(Page.Controls, calendars);
                DateTime dtFirstDay = new DateTime(DateTime.Now.Year, 1, 1);//今年的一月一号
                int index = 0;
                foreach (var calendar in calendars)
                {
                    #region 设置各个控件的显示1~12月份
                    calendar.VisibleDate = dtFirstDay.AddMonths(index++);
                    #endregion

                    calendar.ShowNextPrevMonth = false;
                    //calendar.SelectionMode = CalendarSelectionMode.Day;
                }
            }

            var cals = new List<Calendar>();
            GetControlList<Calendar>(Page.Controls, cals);
            foreach (var calendar in cals)
            {
                int calYear = calendar.VisibleDate.Year;
                int calMonth = calendar.VisibleDate.Month;
                calendar.SelectedDates.Clear();
                List<DateTime> sds = SelectedDates
                    .Where(date => date.Year == calYear && date.Month == calMonth)
                    .ToList();
                foreach (var sd in sds)
                    calendar.SelectedDates.Add(new DateTime(sd.Year, sd.Month, sd.Day));
            }

            lblSelectedUpadte();
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            Calendar cal = sender as Calendar;
            if (SelectedDates.Contains(cal.SelectedDate))
            {
                SelectedDates.Remove(cal.SelectedDate);
            }
            else
            {
                SelectedDates.Add(cal.SelectedDate);
                using (StreamWriter file = new StreamWriter(Server.MapPath("~") + "/Files/WriteLines.txt"))
                {
                    foreach (var date in SelectedDates)
                    {
                        file.WriteLine(date.ToString());
                    }
                }
            }

            lblSelectedUpadte();
        }

        private void lblSelectedUpadte()
        {
            lblSelected.Text = "The date selected is <br />";
            foreach (var selected in SelectedDates)
                lblSelected.Text += selected.ToShortDateString() + "<br />";
        }

        protected void Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            Calendar cal = sender as Calendar;

            #region 非当前日历控件(Calendar Control)的VisibleDate展示的月份的日期的日期控件(CalendarDay)不允许Select操作
            if (e.Day.IsOtherMonth)
                e.Day.IsSelectable = false;
            #endregion
        }

        private void GetControlList<T>(ControlCollection controlCollection, List<T> resultCollection) where T : Control
        {
            foreach (Control control in controlCollection)
            {
                //if (control.GetType() == typeof(T))
                if (control is T) // This is cleaner
                    resultCollection.Add((T)control);

                if (control.HasControls())
                    GetControlList(control.Controls, resultCollection);
            }
        }
    }
}