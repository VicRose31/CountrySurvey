package com.example.countrysurvey.model;

/**
 * Model class representing a survey participant.
 * Contains information about the participant - their id, name, age, and gender,
 */

public class Participant {

    private int participantId;
    private String firstName;
    private String lastName;
    private int age;
    private char gender;
    private boolean validResults;

    public Participant(int participantId, String firstName, String lastName,
                       int age, char gender, boolean validResults) {
        this.participantId = participantId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.gender = gender;
        this.validResults = validResults;
    }

    public Participant () {}

    public int getParticipantId() {
        return participantId;
    }

    public void setParticipantId(int participantId) {
        this.participantId = participantId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public boolean isValidResults() {
        return validResults;
    }

    public void setValidResults(boolean validResults) {
        this.validResults = validResults;
    }
}
