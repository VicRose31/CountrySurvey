package com.example.countrysurvey.dao;

import com.example.countrysurvey.model.Country;

import java.util.List;

public interface CountryDao {

    List<Country> getCountries();

    Country getCountryById(int countryId);

    List<Country> getCountriesByNameOrContinent(String countryName, String continent, boolean useWildCard);

    List<Country> getCountriesByParticipantId(int participantId);





}
