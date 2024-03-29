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
    
    public partial class Classes
    {
        public int Id { get; set; }
        public Nullable<int> SchoolId { get; set; }
        public int Type { get; set; }
        public string Name { get; set; }
        public Nullable<int> ClassroomId { get; set; }
        public string ClassroomName { get; set; }
        public Nullable<int> EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public Nullable<int> CourseId { get; set; }
        public string CourseName { get; set; }
        public Nullable<int> StudentId { get; set; }
        public string StudentName { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public Nullable<System.DateTime> StartTime { get; set; }
        public Nullable<System.DateTime> EndTime { get; set; }
        public string Remark { get; set; }
        public int State { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public Nullable<int> UpdateUserId { get; set; }
        public string UpdateUserName { get; set; }
        public System.DateTime CreateTime { get; set; }
        public Nullable<int> CreateUserId { get; set; }
        public string CreateUserName { get; set; }
    
        public virtual School School { get; set; }
    }
}
