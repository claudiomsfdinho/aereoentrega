package br.com.aereo.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import br.com.aereo.to.AeronaveTO;
import br.com.aere.dao.exception.NotFoundException;

public interface AeronaveDAOInterface {

    public abstract AeronaveTO insert(
        String codigo,
        String nome,
        int quantidadeFileiras,
        int quantidadeAssentosFileira
    ) throws NotFoundException, SQLException;

    public abstract AeronaveTO update(
        int id,
        String codigo,
        String nome,
        int quantidadeFileiras,
        int quantidadeAssentosFileira
    ) throws NotFoundException, SQLException;

    public abstract ArrayList<AeronaveTO> getAll()
    throws NotFoundException, SQLException;

    public abstract AeronaveTO get(int id)
    throws NotFoundException, SQLException;

    public abstract ArrayList<AeronaveTO> getByCodigo(String codigo)
    throws NotFoundException, SQLException;

    public abstract AeronaveTO delete(String id)
    throws NotFoundException, SQLException;
}


