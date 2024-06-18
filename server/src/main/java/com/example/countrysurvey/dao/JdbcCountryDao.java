package com.example.countrysurvey.dao;

import com.example.countrysurvey.model.Country;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public class JdbcCountryDao implements CountryDao {
    @Override
    public List<Country> getCountries() {
        return null;
    }

    @Override
    public Country getCountryById(int countryId) {
        return null;
    }

    @Override
    public List<Country> getCountriesByNameOrContinent(String countryName, String continent, boolean useWildCard) {
        return null;
    }

    @Override
    public List<Country> getCountriesByParticipantId(int participantId) {
        return null;
    }
}
