package br.com.aereo.dao;

import br.com.aereo.dao.mysql.MySQLDAOFactory;
import br.com.aereo.dao.AeronaveDAOInterface;
import br.com.aereo.dao.LoginDAOInterface;
import br.com.aereo.dao.VooDAOInterface;
import br.com.aereo.postgreedao.PostgreeDAOFactory;
import br.com.aereo.config.DatabaseDriverType;

public abstract class AbstractDAOFactory {

    public abstract LoginDAOInterface getLoginDAO();
    public abstract AeronaveDAOInterface getAeronaveDAO();
    public abstract VooDAOInterface getVooDAO();

    public static AbstractDAOFactory getDAOFactory(DatabaseDriverType driverType) {
        if(driverType == DatabaseDriverType.POSTGRESQL)
            return new PostgreeDAOFactory();
        else
            return new MySQLDAOFactory();
    }
}







