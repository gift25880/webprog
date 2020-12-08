
package id66666666666;

public class SomeWhere {
    private Person owner;
    private Location lat_long;

    public SomeWhere(Person owner, Location lat_long) {
        this.owner = owner;
        this.lat_long = lat_long;
    }

    @Override
    public String toString() {
        return "SomeWhere " + "owner=" + owner + "\nlat_long=" + lat_long ;
    }
    
    
    
}
