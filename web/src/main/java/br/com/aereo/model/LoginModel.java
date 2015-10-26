package br.com.aereo.model;

import java.sql.SQLException;

import br.com.aereo.dao.LoginDAOInterface;
import br.com.aereo.dao.AbstractDAOFactory;
import br.com.aereo.dao.exception.NotFoundException;
import br.com.aereo.strategy.DAOStrategy;
import br.com.aereo.to.LoginTO;

public class LoginModel {

    LoginDAOInterface dao;

    public LoginModel() {
        AbstractDAOFactory factory = DAOStrategy.get();
        dao = factory.getLoginDAO();
    }

    public LoginTO selecionarLogin(String usuario, String senha) {
        try {
            return dao.select(usuario, senha);
        }
        catch (NotFoundException e) {
            e.printStackTrace();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean authenticate(LoginTO to) {
        if (to.getId() != 0) return true;
        return false;
    }
}
