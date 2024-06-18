package com.example.countrysurvey.dao;

import com.example.countrysurvey.model.Participant;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public class JdbcParticipantDao implements ParticipantDao {


    @Override
    public List<Participant> getParticipants() {
        return null;
    }

    @Override
    public Participant getParticipantById() {
        return null;
    }

    @Override
    public Participant getParticipantByFirstOrLastName(String firstName, String lastName, boolean useWildCard) {
        return null;
    }

    @Override
    public Participant createParticipant(Participant newParticipant) {
        return null;
    }
}
