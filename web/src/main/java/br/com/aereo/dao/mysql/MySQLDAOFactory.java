package br.com.aereo.dao.mysql;

import br.com.aereo.dao.LoginDAOInterface;
import br.com.aereo.dao.VooDAOInterface;
import br.com.aereo.dao.AeronaveDAOInterface;
import br.com.aereo.dao.AbstractDAOFactory;
import br.com.aereo.dao.mysql.MySQLLoginDAO;
import br.com.aereo.dao.mysql.MySQLAeronaveDAO;
import br.com.aereo.dao.mysql.MySQLVooDAO;

public class MySQLDAOFactory extends AbstractDAOFactory {

    @Override
    public LoginDAOInterface getLoginDAO() {
        return new MySQLLoginDAO();
    }

    @Override
    public AeronaveDAOInterface getAeronaveDAO() {
        return new MySQLAeronaveDAO();
    }

    @Override
    public VooDAOInterface getVooDAO() {
        return new MySQLVooDAO();
    }
}
