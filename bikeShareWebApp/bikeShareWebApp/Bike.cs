using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bikeShareWebApp
{
    public class Bike
    {
        public string station_id { get; set; }
        public string num_bikes_available { get; set; }
        public string num_docks_available { get; set; }
        public string is_installed { get; set; }
        public string is_renting { get; set; }
        public string is_returning { get; set; }
        public string last_reported { get; set; }
    }
}