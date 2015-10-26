package br.com.aereo.strategy;

import br.com.aereo.config.Configuration;
import br.com.aereo.dao.AbstractDAOFactory;

public class DAOStrategy {

    public static AbstractDAOFactory get() {
        try {
            return AbstractDAOFactory.getDAOFactory(
                Configuration.getSelectedDatabaseDriver()
            );
        }
        catch(Exception ex) {
            System.out.println("ex: " + ex);
        }
        return null;
    }
}
