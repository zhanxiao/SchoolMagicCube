//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace SchoolMagicCube.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Log
    {
        public int 序号 { get; set; }
        public Nullable<int> 校区序号 { get; set; }
        public string 校区名称 { get; set; }
        public int 类型 { get; set; }
        public string 登录用户 { get; set; }
        public string 操作 { get; set; }
        public System.DateTime 时间 { get; set; }
    }
}
