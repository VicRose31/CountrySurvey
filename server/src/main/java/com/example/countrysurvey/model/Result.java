package com.example.countrysurvey.model;

public class Result {
    private int resultId;
    private int participantId;
    private int countryId;
    private Country country;

    public Result(int resultId, int participantId, int countryId) {
        this.resultId = resultId;
        this.participantId = participantId;
        this.countryId = countryId;
    }

    public Result () {}

    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    public int getParticipantId() {
        return participantId;
    }

    public void setParticipantId(int participantId) {
        this.participantId = participantId;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }
}
