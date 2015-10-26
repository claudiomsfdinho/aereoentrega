package br.com.aereo.dao;

import java.sql.SQLException;

import br.com.aereo.dao.exception.NotFoundException;
import br.com.aereo.to.LoginTO;

public interface LoginDAOInterface {

    public abstract LoginTO select(String usuario, String senha)
        throws NotFoundException, SQLException;
}
