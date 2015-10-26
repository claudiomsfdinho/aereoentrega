package br.com.aereo.dao;

import java.sql.SQLException;

import br.com.aereo.to.VooTO;
import br.com.aereo.dao.exception.NotFoundException;

import java.util.ArrayList;

public interface VooDAOInterface {

    public abstract VooTO insert(
        int aeronaveId,
        String codigo,
        int origem,
        int destino,
        String escalas,
        String dataHora,
        int assentosDisponiveis,
        String situacao,
        float valor
    ) throws NotFoundException, SQLException;

    public abstract VooTO update(
        String id,
        String codigo,
        int origem,
        int destino,
        String escalas,
        String dataHora,
        int assentosDisponiveis,
        String situacao,
        float valor
    ) throws NotFoundException, SQLException;

    public abstract ArrayList<VooTO> getAll()
    throws NotFoundException, SQLException;

    public abstract VooTO getById(int id)
    throws NotFoundException, SQLException;

    public abstract ArrayList<VooTO> getListDisponivel(
        int quantidadePassageiros,
        int origemAeroportoId,
        int destinoAeroportoId,
        String dataHora
    ) throws NotFoundException, SQLException;

    public abstract VooTO delete(String id)
    throws NotFoundException, SQLException;
}
