using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kassakvitto.Model;

namespace Kassakvitto
{
    public partial class Kassakvitto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt receiptInstance = new Receipt(Double.Parse(TotalSum.Text));
                ReceiptPanel.Visible = true;
                SubTotal.Text = String.Format("{0:c}", receiptInstance.Subtotal);
                DiscountRate.Text = String.Format("{0:p0}", receiptInstance.DiscountRate);
                Discount.Text = String.Format("{0:c}", receiptInstance.MoneyOff);
                Total.Text = String.Format("{0:c}", receiptInstance.Total);
            }
        }
    }
}