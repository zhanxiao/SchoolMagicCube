/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2019/10/3 13:46:17                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('City') and o.name = 'FK_CITY_CITY_REF__PROVINCE')
alter table City
   drop constraint FK_CITY_CITY_REF__PROVINCE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Classes') and o.name = 'FK_CLASSES_REFERENCE_SCHOOL')
alter table Classes
   drop constraint FK_CLASSES_REFERENCE_SCHOOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Classroom') and o.name = 'FK_CLASSROO_REFERENCE_SCHOOL')
alter table Classroom
   drop constraint FK_CLASSROO_REFERENCE_SCHOOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('County') and o.name = 'FK_COUNTY_COUNTY_RE_CITY')
alter table County
   drop constraint FK_COUNTY_COUNTY_RE_CITY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Course') and o.name = 'FK_COURSE_REFERENCE_SCHOOL')
alter table Course
   drop constraint FK_COURSE_REFERENCE_SCHOOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Department') and o.name = 'FK_DEPARTME_REFERENCE_SCHOOL')
alter table Department
   drop constraint FK_DEPARTME_REFERENCE_SCHOOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dictionary') and o.name = 'FK_DICTIONA_REFERENCE_DICTIONA')
alter table Dictionary
   drop constraint FK_DICTIONA_REFERENCE_DICTIONA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Employee') and o.name = 'FK_EMPLOYEE_REFERENCE_SCHOOL')
alter table Employee
   drop constraint FK_EMPLOYEE_REFERENCE_SCHOOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_REGION_RE_COUNTY')
alter table Region
   drop constraint FK_REGION_REGION_RE_COUNTY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Student') and o.name = 'FK_STUDENT_REFERENCE_SCHOOL')
alter table Student
   drop constraint FK_STUDENT_REFERENCE_SCHOOL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('UserSchool') and o.name = 'FK_USERSCHO_REFERENCE_USER')
alter table UserSchool
   drop constraint FK_USERSCHO_REFERENCE_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('UserSchool') and o.name = 'FK_USERSCHO_REFERENCE_SCHOOL')
alter table UserSchool
   drop constraint FK_USERSCHO_REFERENCE_SCHOOL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('City')
            and   type = 'U')
   drop table City
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Classes')
            and   type = 'U')
   drop table Classes
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Classroom')
            and   type = 'U')
   drop table Classroom
go

if exists (select 1
            from  sysobjects
           where  id = object_id('County')
            and   type = 'U')
   drop table County
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Course')
            and   type = 'U')
   drop table Course
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Department')
            and   type = 'U')
   drop table Department
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dictionary')
            and   type = 'U')
   drop table Dictionary
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictionaryType')
            and   type = 'U')
   drop table DictionaryType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Employee')
            and   type = 'U')
   drop table Employee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Log')
            and   type = 'U')
   drop table Log
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Menu')
            and   type = 'U')
   drop table Menu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Province')
            and   type = 'U')
   drop table Province
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Region')
            and   type = 'U')
   drop table Region
go

if exists (select 1
            from  sysobjects
           where  id = object_id('School')
            and   type = 'U')
   drop table School
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Student')
            and   type = 'U')
   drop table Student
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"User"')
            and   type = 'U')
   drop table "User"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UserSchool')
            and   type = 'U')
   drop table UserSchool
go

/*==============================================================*/
/* Table: City                                                  */
/*==============================================================*/
create table City (
   ProvinceId           int                  null,
   ProvinceName         nvarchar(100)        null,
   CityId               int                  not null,
   CityName             nvarchar(100)        null,
   constraint PK_CITY primary key (CityId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('City') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'City' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '��', 
   'user', @CurrentUser, 'table', 'City'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'City', 'column', 'ProvinceId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ���',
   'user', @CurrentUser, 'table', 'City', 'column', 'ProvinceId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'City', 'column', 'ProvinceName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ����',
   'user', @CurrentUser, 'table', 'City', 'column', 'ProvinceName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'City', 'column', 'CityId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����',
   'user', @CurrentUser, 'table', 'City', 'column', 'CityId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'City', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'City', 'column', 'CityName'
go

/*==============================================================*/
/* Table: Classes                                               */
/*==============================================================*/
create table Classes (
   Id                   int                  identity,
   SchoolId             int                  null,
   Type                 int                  not null default 0,
   Name                 nvarchar(100)        null,
   ClassroomId          int                  null,
   ClassroomName        nvarchar(100)        null,
   EmployeeId           int                  null,
   EmployeeName         nvarchar(100)        null,
   CourseId             int                  null,
   CourseName           nvarchar(100)        null,
   StudentId            int                  null,
   StudentName          nvarchar(100)        null,
   StartDate            datetime             null,
   EndDate              datetime             null,
   StartTime            datetime             null,
   EndTime              datetime             null,
   Remark               nvarchar(500)        null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   constraint PK_CLASSES primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Classes') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Classes' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�༶', 
   'user', @CurrentUser, 'table', 'Classes'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�༶����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�༶����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ClassroomId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'ClassroomId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'ClassroomId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ClassroomName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'ClassroomName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'ClassroomName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EmployeeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʦ',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EmployeeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EmployeeName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EmployeeName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʦ����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EmployeeName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CourseId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CourseId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�γ�',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CourseId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CourseName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CourseName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�γ�����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CourseName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StudentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StudentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ѧ��',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StudentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StudentName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StudentName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ѧ������',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StudentName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StartDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʼ����',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StartDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EndDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EndDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StartTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʼʱ��',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'StartTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'EndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classes')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Classes', 'column', 'CreateUserName'
go

/*==============================================================*/
/* Table: Classroom                                             */
/*==============================================================*/
create table Classroom (
   Id                   int                  identity,
   SchoolId             int                  null,
   Type                 int                  not null default 0,
   Code                 varchar(100)         null,
   Name                 nvarchar(100)        null,
   Remark               nvarchar(500)        null,
   State2               int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   constraint PK_CLASSROOM primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Classroom') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Classroom' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', @CurrentUser, 'table', 'Classroom'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Code')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Code'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ұ��',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Code'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'State2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬2',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'State2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Classroom')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Classroom', 'column', 'CreateUserName'
go

/*==============================================================*/
/* Table: County                                                */
/*==============================================================*/
create table County (
   ProvinceId           int                  null,
   ProvinceName         nvarchar(100)        null,
   CityId               int                  null,
   CityName             nvarchar(100)        null,
   CountyId             int                  not null,
   CountyName           nvarchar(100)        null,
   constraint PK_COUNTY primary key (CountyId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('County') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'County' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', @CurrentUser, 'table', 'County'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('County')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'County', 'column', 'ProvinceId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ���',
   'user', @CurrentUser, 'table', 'County', 'column', 'ProvinceId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('County')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'County', 'column', 'ProvinceName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ����',
   'user', @CurrentUser, 'table', 'County', 'column', 'ProvinceName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('County')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'County', 'column', 'CityId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����',
   'user', @CurrentUser, 'table', 'County', 'column', 'CityId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('County')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'County', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'County', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('County')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountyId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'County', 'column', 'CountyId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'County', 'column', 'CountyId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('County')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountyName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'County', 'column', 'CountyName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'County', 'column', 'CountyName'
go

/*==============================================================*/
/* Table: Course                                                */
/*==============================================================*/
create table Course (
   Id                   int                  identity,
   SchoolId             int                  null,
   Type                 int                  not null default 0,
   Name                 nvarchar(100)        null,
   Remark               nvarchar(500)        null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   constraint PK_COURSE primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Course') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Course' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�γ�', 
   'user', @CurrentUser, 'table', 'Course'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Course', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Course', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�γ�����',
   'user', @CurrentUser, 'table', 'Course', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Course', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'Course', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'Course', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'Course', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'Course', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'Course', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Course', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'Course', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Course')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Course', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Course', 'column', 'CreateUserName'
go

/*==============================================================*/
/* Table: Department                                            */
/*==============================================================*/
create table Department (
   Id                   int                  identity,
   SchoolId             int                  null,
   Type                 int                  not null default 0,
   Name                 nvarchar(100)        null,
   Remark               nvarchar(500)        null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   constraint PK_DEPARTMENT primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Department') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Department' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', @CurrentUser, 'table', 'Department'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Department', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Department', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Department', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Department', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'Department', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'Department', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'Department', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'Department', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'Department', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Department', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'Department', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Department')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Department', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Department', 'column', 'CreateUserName'
go

/*==============================================================*/
/* Table: Dictionary                                            */
/*==============================================================*/
create table Dictionary (
   Id                   int                  identity,
   DictionaryTypeId     int                  null,
   "Key"                int                  null,
   Value                nvarchar(100)        null,
   constraint PK_DICTIONARY primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Dictionary') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Dictionary' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�����ֵ�', 
   'user', @CurrentUser, 'table', 'Dictionary'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Dictionary')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Dictionary')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DictionaryTypeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'DictionaryTypeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֵ�����Id',
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'DictionaryTypeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Dictionary')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Key')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'Key'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��',
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'Key'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Dictionary')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Value')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'Value'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ֵ',
   'user', @CurrentUser, 'table', 'Dictionary', 'column', 'Value'
go

/*==============================================================*/
/* Table: DictionaryType                                        */
/*==============================================================*/
create table DictionaryType (
   DictionaryTypeId     int                  not null,
   DictionaryTypeName   nvarchar(100)        null,
   constraint PK_DICTIONARYTYPE primary key (DictionaryTypeId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DictionaryType') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DictionaryType' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�ֵ�����', 
   'user', @CurrentUser, 'table', 'DictionaryType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DictionaryType')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DictionaryTypeId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DictionaryType', 'column', 'DictionaryTypeId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'DictionaryType', 'column', 'DictionaryTypeId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DictionaryType')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DictionaryTypeName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DictionaryType', 'column', 'DictionaryTypeName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'DictionaryType', 'column', 'DictionaryTypeName'
go

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table Employee (
   Id                   int                  identity,
   SchoolId             int                  null,
   DepartmentId         int                  null,
   Type                 int                  not null default 0,
   Name                 nvarchar(100)        null,
   Sex                  int                  null,
   Birthday             datetime             null,
   IDNumber             varchar(100)         null,
   MobilePhone          varchar(100)         null,
   QQ                   varchar(100)         null,
   Weixin               varchar(100)         null,
   Address              nvarchar(100)        null,
   Remark               nvarchar(500)        null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   constraint PK_EMPLOYEE primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Employee') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Employee' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Ա��', 
   'user', @CurrentUser, 'table', 'Employee'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepartmentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'DepartmentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'DepartmentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ա������',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sex')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Sex'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ա�',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Sex'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Birthday')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Birthday'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Birthday'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'IDNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���֤��',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'IDNumber'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MobilePhone')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'MobilePhone'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֻ�����',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'MobilePhone'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'QQ')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'QQ'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'QQ',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'QQ'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Weixin')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Weixin'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '΢��',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Weixin'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Address'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'סַ',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Employee')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Employee', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Employee', 'column', 'CreateUserName'
go

/*==============================================================*/
/* Table: Log                                                   */
/*==============================================================*/
create table Log (
   ���                   int                  identity,
   У�����                 int                  null,
   У������                 nvarchar(100)        null,
   ����                   int                  not null default 0,
   ��¼�û�                 varchar(100)         null,
   ����                   varchar(8000)        null,
   ʱ��                   datetime             not null default getdate(),
   constraint PK_LOG primary key (���)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Log') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Log' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '��־', 
   'user', @CurrentUser, 'table', 'Log'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = '���')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', '���'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Log', 'column', '���'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'У�����')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', 'У�����'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Log', 'column', 'У�����'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'У������')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', 'У������'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У������',
   'user', @CurrentUser, 'table', 'Log', 'column', 'У������'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = '����')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', '����'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Log', 'column', '����'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = '��¼�û�')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', '��¼�û�'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼�û�',
   'user', @CurrentUser, 'table', 'Log', 'column', '��¼�û�'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = '����')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', '����'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Log', 'column', '����'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Log')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ʱ��')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Log', 'column', 'ʱ��'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʱ��',
   'user', @CurrentUser, 'table', 'Log', 'column', 'ʱ��'
go

/*==============================================================*/
/* Table: Menu                                                  */
/*==============================================================*/
create table Menu (
   Id                   int                  not null,
   ParentId             int                  null,
   MenuLevel            int                  null,
   MenuCode             varchar(100)         null,
   MenuName             nvarchar(100)        null,
   State                int                  not null default 0,
   constraint PK_MENU primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Menu') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Menu' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '���ܲ˵�', 
   'user', @CurrentUser, 'table', 'Menu'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Menu', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Menu', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ParentId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Menu', 'column', 'ParentId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ϼ��˵����',
   'user', @CurrentUser, 'table', 'Menu', 'column', 'ParentId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuLevel')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Menu', 'column', 'MenuLevel'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�˵�����',
   'user', @CurrentUser, 'table', 'Menu', 'column', 'MenuLevel'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Menu', 'column', 'MenuCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Menu', 'column', 'MenuCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MenuName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Menu', 'column', 'MenuName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�˵�����',
   'user', @CurrentUser, 'table', 'Menu', 'column', 'MenuName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Menu')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Menu', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'Menu', 'column', 'State'
go

/*==============================================================*/
/* Table: Province                                              */
/*==============================================================*/
create table Province (
   ProvinceId           int                  not null,
   ProvinceName         nvarchar(100)        null,
   constraint PK_PROVINCE primary key (ProvinceId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Province') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Province' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'ʡ', 
   'user', @CurrentUser, 'table', 'Province'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Province')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Province', 'column', 'ProvinceId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ���',
   'user', @CurrentUser, 'table', 'Province', 'column', 'ProvinceId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Province')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Province', 'column', 'ProvinceName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ����',
   'user', @CurrentUser, 'table', 'Province', 'column', 'ProvinceName'
go

/*==============================================================*/
/* Table: Region                                                */
/*==============================================================*/
create table Region (
   Id                   int                  null,
   ProvinceId           int                  null,
   ProvinceName         nvarchar(100)        null,
   CityId               int                  null,
   CityName             nvarchar(100)        null,
   CountyId             int                  null,
   CountyName           nvarchar(100)        null,
   RegionId             int                  not null,
   RegionName           nvarchar(100)        null,
   constraint PK_REGION primary key (RegionId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Region') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Region' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '����', 
   'user', @CurrentUser, 'table', 'Region'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Region', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'ProvinceId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ���',
   'user', @CurrentUser, 'table', 'Region', 'column', 'ProvinceId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'ProvinceName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʡ����',
   'user', @CurrentUser, 'table', 'Region', 'column', 'ProvinceName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'CityId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����',
   'user', @CurrentUser, 'table', 'Region', 'column', 'CityId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Region', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountyId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'CountyId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'Region', 'column', 'CountyId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountyName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'CountyName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Region', 'column', 'CountyName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RegionId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'RegionId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'Region', 'column', 'RegionId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RegionName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Region', 'column', 'RegionName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Region', 'column', 'RegionName'
go

/*==============================================================*/
/* Table: School                                                */
/*==============================================================*/
create table School (
   Id                   int                  identity,
   Type                 int                  not null default 0,
   Name                 nvarchar(100)        null,
   RegionId             int                  null,
   Address              nvarchar(100)        null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   constraint PK_SCHOOL primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('School') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'School' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'У��', 
   'user', @CurrentUser, 'table', 'School'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'School', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У������',
   'user', @CurrentUser, 'table', 'School', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У������',
   'user', @CurrentUser, 'table', 'School', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RegionId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'RegionId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'School', 'column', 'RegionId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'Address'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ַ',
   'user', @CurrentUser, 'table', 'School', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'School', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'School', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'School', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'School', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'School', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'School', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('School')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'School', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'School', 'column', 'CreateUserName'
go

/*==============================================================*/
/* Table: Student                                               */
/*==============================================================*/
create table Student (
   Id                   int                  not null,
   SchoolId             int                  null,
   Type                 int                  not null default 0,
   Code                 varchar(100)         null,
   Name                 nvarchar(100)        null,
   Sex                  int                  null,
   Birthday             datetime             null,
   IDNumber             varchar(100)         null,
   MobilePhone          varchar(100)         null,
   SchoolName           nvarchar(100)        null,
   ClassName            nvarchar(100)        null,
   GuardianType1        int                  not null default 0,
   GuardianName1        nvarchar(100)        null,
   GuardianMobilePhone1 varchar(100)         null,
   GuardianType2        int                  not null default 0,
   GuardianName2        nvarchar(100)        null,
   GuardianMobilePhone2 varchar(100)         null,
   GuardianOccupation2  nvarchar(100)        null,
   Address              nvarchar(100)        null,
   Remark               nvarchar(500)        null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   UpdateUserId         int                  null,
   UpdateUserName       nvarchar(100)        null,
   CreateTime           datetime             not null default getdate(),
   CreateUserId         int                  null,
   CreateUserName       nvarchar(100)        null,
   GuardianOccupation1  nvarchar(100)        null,
   constraint PK_STUDENT primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Student') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Student' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'ѧԱ', 
   'user', @CurrentUser, 'table', 'Student'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'Student', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ѧԱ����',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Code')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Code'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ѧ��',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Code'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Sex')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Sex'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ա�',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Sex'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Birthday')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Birthday'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Birthday'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'IDNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���֤��',
   'user', @CurrentUser, 'table', 'Student', 'column', 'IDNumber'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MobilePhone')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'MobilePhone'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֻ���',
   'user', @CurrentUser, 'table', 'Student', 'column', 'MobilePhone'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'SchoolName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ѧУ',
   'user', @CurrentUser, 'table', 'Student', 'column', 'SchoolName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ClassName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'ClassName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�༶',
   'user', @CurrentUser, 'table', 'Student', 'column', 'ClassName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianType1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianType1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤��1',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianType1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianName1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianName1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤������1',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianName1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianMobilePhone1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianMobilePhone1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤���ֻ�1',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianMobilePhone1'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianType2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianType2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤��2',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianType2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianName2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianName2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤������2',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianName2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianMobilePhone2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianMobilePhone2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤���ֻ�2',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianMobilePhone2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianOccupation2')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianOccupation2'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤��ְҵ2',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianOccupation2'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Address')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Address'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ͥ��ַ',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Remark')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'Remark'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'Student', 'column', 'Remark'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'Student', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'Student', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'UpdateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���ID',
   'user', @CurrentUser, 'table', 'Student', 'column', 'UpdateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'UpdateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸���',
   'user', @CurrentUser, 'table', 'Student', 'column', 'UpdateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'Student', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'CreateUserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������ID',
   'user', @CurrentUser, 'table', 'Student', 'column', 'CreateUserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateUserName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'CreateUserName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'Student', 'column', 'CreateUserName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Student')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuardianOccupation1')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianOccupation1'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�໤��ְҵ1',
   'user', @CurrentUser, 'table', 'Student', 'column', 'GuardianOccupation1'
go

/*==============================================================*/
/* Table: "User"                                                */
/*==============================================================*/
create table "User" (
   UserId               int                  identity,
   UserType             int                  null,
   PersonId             int                  null,
   PersonName           nvarchar(100)        null,
   LoginName            varchar(100)         null,
   Password             varchar(100)         null,
   MobilePhone          varchar(100)         null,
   Email                varchar(100)         null,
   State                int                  not null default 0,
   UpdateTime           datetime             not null default getdate(),
   CreateTime           datetime             not null default getdate(),
   constraint PK_USER primary key (UserId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('"User"') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'User' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�û�', 
   'user', @CurrentUser, 'table', 'User'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'UserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'User', 'column', 'UserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'UserType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1:ϵͳ�û�,2:Ա��,3:ѧ��',
   'user', @CurrentUser, 'table', 'User', 'column', 'UserType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PersonId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'PersonId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ԱId',
   'user', @CurrentUser, 'table', 'User', 'column', 'PersonId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PersonName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'PersonName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա����',
   'user', @CurrentUser, 'table', 'User', 'column', 'PersonName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LoginName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'LoginName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼��',
   'user', @CurrentUser, 'table', 'User', 'column', 'LoginName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Password')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'Password'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'User', 'column', 'Password'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MobilePhone')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'MobilePhone'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֻ���',
   'user', @CurrentUser, 'table', 'User', 'column', 'MobilePhone'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Email')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'Email'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'User', 'column', 'Email'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬',
   'user', @CurrentUser, 'table', 'User', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�޸�ʱ��',
   'user', @CurrentUser, 'table', 'User', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"User"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'User', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'User', 'column', 'CreateTime'
go

/*==============================================================*/
/* Table: UserSchool                                            */
/*==============================================================*/
create table UserSchool (
   Id                   int                  not null,
   SchoolId             int                  null,
   UserId               int                  null,
   constraint PK_USERSCHOOL primary key (Id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('UserSchool') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'UserSchool' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '�û�У����ϵ', 
   'user', @CurrentUser, 'table', 'UserSchool'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserSchool')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserSchool', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���',
   'user', @CurrentUser, 'table', 'UserSchool', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserSchool')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchoolId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserSchool', 'column', 'SchoolId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'У�����',
   'user', @CurrentUser, 'table', 'UserSchool', 'column', 'SchoolId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserSchool')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserSchool', 'column', 'UserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û����',
   'user', @CurrentUser, 'table', 'UserSchool', 'column', 'UserId'
go

alter table City
   add constraint FK_CITY_CITY_REF__PROVINCE foreign key (ProvinceId)
      references Province (ProvinceId)
go

alter table Classes
   add constraint FK_CLASSES_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

alter table Classroom
   add constraint FK_CLASSROO_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

alter table County
   add constraint FK_COUNTY_COUNTY_RE_CITY foreign key (CityId)
      references City (CityId)
go

alter table Course
   add constraint FK_COURSE_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

alter table Department
   add constraint FK_DEPARTME_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

alter table Dictionary
   add constraint FK_DICTIONA_REFERENCE_DICTIONA foreign key (DictionaryTypeId)
      references DictionaryType (DictionaryTypeId)
go

alter table Employee
   add constraint FK_EMPLOYEE_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

alter table Region
   add constraint FK_REGION_REGION_RE_COUNTY foreign key (CountyId)
      references County (CountyId)
go

alter table Student
   add constraint FK_STUDENT_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

alter table UserSchool
   add constraint FK_USERSCHO_REFERENCE_USER foreign key (UserId)
      references "User" (UserId)
go

alter table UserSchool
   add constraint FK_USERSCHO_REFERENCE_SCHOOL foreign key (SchoolId)
      references School (Id)
go

