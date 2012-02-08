using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace L24CMTest.Models
{
    public class TestModel
    {
        public string A { get; set; }
        [UIHint("Collection-Paged")]
        public List<int> Numbers { get; set; }
        public TestInner Inner { get; set; }
    }
    public class TestInner
    {
        [UIHint("Collection-Paged")]
        public List<string> Values { get; set; }
    }
}
