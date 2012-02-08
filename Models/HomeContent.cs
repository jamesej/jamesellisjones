using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using L24CM.Models;
using System.Web.Mvc;

namespace L24CMTest.Models
{
    public class HomeContent : BaseContent
    {
        public Link BlogLink { get; set; }

        public HomeContent()
        {
            BlogLink = new Link();
        }
    }

    public class HomeModel : ContentModel<HomeContent>
    {

    }
}
