package br.com.aereo.model;

import java.util.ArrayList;
import java.util.List;

import br.com.aereo.to.VooTO;
import br.com.aereo.to.AeronaveTO;
import br.com.aereo.dao.VooDAOInterface;
import br.com.aereo.dao.AeronaveDAOInterface;
import br.com.aereo.dao.AbstractDAOFactory;
import br.com.aereo.config.Configuration;
import br.com.aereo.config.DatabaseDriverType;
import br.com.aereo.strategy.DAOStrategy;

public class VooModel {

    VooDAOInterface dao;
    AeronaveDAOInterface aeronaveDAO;

    public VooModel() throws Exception {
        AbstractDAOFactory factory = DAOStrategy.get();
        dao = factory.getVooDAO();
        aeronaveDAO = factory.getAeronaveDAO();
    }

    public VooTO insert(
        int aeronaveId,
        String codigo,
        String situacao,
        String dataHora,
        String escalas,
        int origem,
        int destino,
        float valor
    ){
        VooTO to = new VooTO();
        AeronaveTO aeronaveTO = new AeronaveTO();
        try {
            aeronaveTO = aeronaveDAO.get(aeronaveId);
            int aeronaveQuantidadeTotalAssentos =
                aeronaveTO.getQuantidadeFileiras() *
                aeronaveTO.getQuantidadeAssentosFileira();

            to = dao.insert(
                aeronaveId,
                codigo,
                origem,
                destino,
                escalas,
                dataHora,
                aeronaveQuantidadeTotalAssentos,
                situacao,
                valor
            );
        }
        catch(Exception e) {
            System.out.println("Erro ao inserir Voo.");
            e.printStackTrace();
        }
        return to;
    }

    public ArrayList<VooTO> getListDisponivel(
        int quantidadePassageiros,
        int origemAeroportoId,
        int destinoAeroportoId,
        String dataHora
    ) {
        ArrayList<VooTO> list = new ArrayList<VooTO>();
        try {
            list = dao.getListDisponivel(
                quantidadePassageiros,
                origemAeroportoId,
                destinoAeroportoId,
                dataHora
            );
        }
        catch(Exception e) {
            System.out.println("Erro ao selecionar Vôo disponível");
            e.printStackTrace();
        }

        return list;
    }
}
