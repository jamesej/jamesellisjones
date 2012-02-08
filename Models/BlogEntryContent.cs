using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using L24CM.Models;
using System.ComponentModel.DataAnnotations;

namespace L24CMTest.Models
{
    public class BlogEntryContent : PageContent
    {
        public string Title { get; set; }

        DateTime date;
        public DateTime Date
        {
            get { return date; }
            set
            {
                // allows for date elements in the url
                this.ContentItem.Subindex0 = value.Year.ToString();
                this.ContentItem.Subindex1 = value.Month.ToString();
                this.ContentItem.Subindex2 = value.Day.ToString();
                date = value;
            }
        }

        [UIHint("Html")]
        public string Body { get; set; }
    }
}
