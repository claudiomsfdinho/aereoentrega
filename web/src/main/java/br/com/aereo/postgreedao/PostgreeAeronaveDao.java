package br.com.aereo.postgreedao;

import java.sql.SQLException;
import java.util.ArrayList;

import br.com.aereo.dao.AeronaveDAOInterface;
import br.com.aereo.to.AeronaveTO;
import br.com.aereo.dao.exception.NotFoundException;

public class PostgreeAeronaveDao implements AeronaveDAOInterface  {

    @Override
    public AeronaveTO insert(
        String codigo,
        String nome,
        int quantidadeFileiras,
        int quantidadeAssentosFileira
    ) throws NotFoundException, SQLException {
        return null;
    }

    @Override
    public AeronaveTO update(
        int id,
        String codigo,
        String nome,
        int quantidadeFileiras,
        int quantidadeAssentosFileira
    ) throws NotFoundException, SQLException {
        return null;
    }

    @Override
    public ArrayList<AeronaveTO> getAll()
    throws NotFoundException, SQLException {
        return null;
    }

    @Override
    public AeronaveTO get(int id)
    throws NotFoundException, SQLException {
        return null;
    }

    @Override
    public ArrayList<AeronaveTO> getByCodigo(String codigo)
    throws NotFoundException, SQLException {
        return null;
    }

    @Override
    public AeronaveTO delete(String id)
    throws NotFoundException, SQLException {
        return null;
    }

}
