package com.example.countrysurvey.model;

public class Country {

    private int countryId;

    private String countryName;

    private String continent;


    public Country(int countryId, String countryName, String continent) {
        this.countryId = countryId;
        this.countryName = countryName;
        this.continent = continent;
    }

    public Country () {}

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }
}
