//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace webcv.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Projects
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_Projects()
        {
            this.tbl_Project_Images = new HashSet<tbl_Project_Images>();
        }
    
        public int Project_ID { get; set; }
        public string Project_Title { get; set; }
        public string Project_Description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Project_Images> tbl_Project_Images { get; set; }
    }
}