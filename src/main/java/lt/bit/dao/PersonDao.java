package lt.bit.dao;

import lt.bit.data.Person;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonDao extends JpaRepository<Person, Integer> {
    
}
