package br.com.aereo.postgreedao;

import br.com.aereo.dao.AeronaveDAOInterface;
import br.com.aereo.dao.AbstractDAOFactory;
import br.com.aereo.dao.LoginDAOInterface;
import br.com.aereo.dao.VooDAOInterface;


public class PostgreeDAOFactory extends AbstractDAOFactory{

    @Override
    public LoginDAOInterface getLoginDAO() {
        return new PostgreeLoginDao();
    }

    public AeronaveDAOInterface getAeronaveDAO(){
        return new PostgreeAeronaveDao();
    }

    @Override
    public VooDAOInterface getVooDAO() {
        return null;
    }
}
