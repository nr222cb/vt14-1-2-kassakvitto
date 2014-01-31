using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Receipt
    {
        // privat fält
        private double _subtotal;

        // autoimplementerade egenskaper
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Total { get; private set; }

        // vanlig egenskap
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException("Värdet får ej vara mindre eller lika med 0.");
                }
                _subtotal = value;
            }
        }

        // Metoder
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (Subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (Subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (Subtotal < 5000)
            {
                DiscountRate = 0.1;
            }
            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}