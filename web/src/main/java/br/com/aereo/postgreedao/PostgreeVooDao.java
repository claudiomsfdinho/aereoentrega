package br.com.aereo.postgreedao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.aereo.to.VooTO;
import br.com.aereo.dao.VooDAOInterface;
import br.com.aereo.model.Voo;
import br.com.aereo.postgreedao.PostgreeAcessoBD;
import br.com.aereo.dao.exception.NotFoundException;

public class PostgreeVooDao implements VooDAOInterface {

    Connection conn=null;
    ResultSet rs = null;
    PreparedStatement pst = null;

    public PostgreeVooDao() {
        try{
            conn = PostgreeAcessoBD.obtemConexao();
        }
        catch(Exception ex){
            System.out.println("Erro ao setar a string"+ex);
        }
    }


    public VooTO insert(
        int aeronaveId,
        String codigo,
        int origem,
        int destino,
        String escalas,
        String dataHora,
        int assentosDisponiveis,
        String situacao,
        float valor
    ) throws NotFoundException, SQLException {
        return null;
    }

    public VooTO update(
        String id,
        String codigo,
        int origem,
        int destino,
        String escalas,
        String dataHora,
        int assentosDisponiveis,
        String situacao,
        float valor
    ) throws NotFoundException, SQLException {
        return null;
    }

    public ArrayList<VooTO> getAll()
    throws NotFoundException, SQLException {
        return null;
    }

    public VooTO getById(int id)
    throws NotFoundException, SQLException {
        return null;
    }

    public ArrayList<VooTO> getListDisponivel(
        int quantidadePassageiros,
        int origemAeroportoId,
        int destinoAeroportoId,
        String dataHora
    ) throws NotFoundException, SQLException {
        return null;
    }

    public VooTO delete(String id)
    throws NotFoundException, SQLException {
        return null;
    }

}
