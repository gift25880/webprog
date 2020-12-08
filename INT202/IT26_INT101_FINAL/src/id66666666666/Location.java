package id66666666666;

public class Location {

    private double latitude, longitude;

    public Location(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public void setLatLong(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public double[] getLatitudeLongitude() {
        return new double[]{latitude, longitude};
    }

    @Override
    public String toString() {
        return "latitude=" + latitude + ", longitude=" + longitude;
    }

}
