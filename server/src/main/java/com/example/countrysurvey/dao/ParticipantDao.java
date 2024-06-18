package com.example.countrysurvey.dao;

import com.example.countrysurvey.model.Participant;

import java.util.List;

public interface ParticipantDao {

    List<Participant> getParticipants();
    Participant getParticipantById();
    Participant getParticipantByFirstOrLastName(String firstName, String lastName, boolean useWildCard);
    Participant createParticipant(Participant newParticipant);

}
