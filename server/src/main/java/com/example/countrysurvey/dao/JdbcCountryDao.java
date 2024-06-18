package com.example.countrysurvey.dao;

import com.example.countrysurvey.model.Country;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcCountryDao implements CountryDao {

//    private JdbcTemplate jdbcTemplate;
//
//    private JdbcCountryDao (JdbcTemplate jdbcTemplate) {
//        this.jdbcTemplate = jdbcTemplate;
//    }
    @Override
    public List<Country> getCountries() {
//        List<Country> countries = new ArrayList<>();
//        String sql = "SELECT * FROM country ORDER BY country_name";
//        try {
//
//        }
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

    private Country mapRowToCountry(SqlRowSet result) {
        return null;
    }
}
