package lt.bit.dao;

import lt.bit.data.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactDao extends JpaRepository<Contact, Integer> {
    
    
    
}
