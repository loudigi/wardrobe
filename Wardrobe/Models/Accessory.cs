//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
 
    
    public partial class Accessory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Accessory()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int AccessoryID { get; set; }
        public string Name { get; set; }
       
        public string Photo { get; set; }
        public string Type { get; set; }
        public string Color { get; set; }
        public Nullable<int> SeasonID { get; set; }
        public Nullable<int> OccasionID { get; set; }
    
        public virtual Season Season { get; set; }
        public virtual Occasion Occasion { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}
