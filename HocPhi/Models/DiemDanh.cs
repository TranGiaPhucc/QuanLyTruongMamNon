//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HocPhi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DiemDanh
    {
        public System.DateTime NgayDiemDanh { get; set; }
        public string HocSinh { get; set; }
        public Nullable<bool> TrangThaiDiemDanh { get; set; }
    
        public virtual HocSinh HocSinh1 { get; set; }
    }
}
