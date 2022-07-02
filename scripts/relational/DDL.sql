DROP TABLE IF EXISTS PERSON CASCADE;
DROP TABLE IF EXISTS PERSONFRIEND CASCADE;

CREATE TABLE PERSON (
	id	BIGSERIAL NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	
	CONSTRAINT p_pk PRIMARY KEY (id)
);

CREATE TABLE PERSONFRIEND (
	person_id	BIGINT NOT NULL,
	friend_id	BIGINT NOT NULL,
	
	CONSTRAINT pf_pk PRIMARY KEY (person_id, friend_id),
	
	CONSTRAINT pf_p_fk FOREIGN KEY (person_id)
		REFERENCES PERSON (id),
	
	CONSTRAINT pf_f_fk FOREIGN KEY (friend_id)
		REFERENCES PERSON (id)
);
