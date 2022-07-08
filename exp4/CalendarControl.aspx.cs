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
                if(this.ViewState[SelectedDatesViewStateKey] == null)
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
                    calendar.SelectionMode = CalendarSelectionMode.Day;
                }
            }

        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            Calendar cal = sender as Calendar;
            List<DateTime> selectedDates = SelectedDates;
            if (selectedDates.Contains(cal.SelectedDate))
            {
                selectedDates.Remove(cal.SelectedDate);
            }
            else
            {
                selectedDates.Add(cal.SelectedDate);
                using (StreamWriter file = new StreamWriter(Server.MapPath("~") + "/Files/WriteLines.txt"))
                {
                    foreach (var date in selectedDates)
                    {
                        file.WriteLine(date.ToString());
                    }
                }
            }
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

        protected void Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            //Calendar cal = sender as Calendar;
            //List<DateTime> selectedDates = SelectedDates;
            //if (!Page.IsPostBack)
            //{
            //    if(e.Day.IsOtherMonth)
            //        e.Cell.Controls.Clear();
            //}
            //// 负责渲染所有的已选日期
            //foreach (var date in selectedDates)
            //{
            //    if (e.Day.IsOtherMonth)
            //        e.Cell.Controls.Clear();
            //    if (e.Day.Date == date)
            //        e.Cell.BackColor = System.Drawing.Color.Red;
            //}
        }
    }
}