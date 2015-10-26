package aereo.usjt.br.aereo.model;

import java.io.Serializable;

/**
 * Created by Claudio Miranda on 12/09/2015.
 */
public class Voo implements Comparable<Voo>, Serializable {




        private String nome;
        private String origem;
        private String destino;
        private  double valor;
        private String dados;
        private  int qtdeEscalas;
        private String data;
        private String aeronave;
        private String situacao;
        private String imagem;
        public static final String NAO_ENCONTRADO = "Não encontrado.";

        public Voo(String nome , String origem, String destino, int qtdeEscalas, String aeronave, String situacao, Double valor, String imagem)
        {

            //setDados( "" );
            this.nome = nome;
            this.origem = origem;
            this.destino = destino;
            this.qtdeEscalas = qtdeEscalas;
            this.aeronave = aeronave;
            this.situacao = situacao;
            this.valor = valor;
            this.imagem = imagem;
        }

        public String getDados()
        {

            return dados;

        }
        public String getNome()
        {
            return nome;
        }

    public int getQtdeEscalas()
    {
        return qtdeEscalas;
    }

        public String getOrigem()
        {
            return origem;
        }
    public double getValor()
    {
        return valor;
    }
        public String getDestino()
        {
            return destino;
        }

        public String getData()
        {
            return data;
        }

    public String getImagem() {return imagem;}

        public String getSituacao()
        {
            return situacao;
        }


        public String getDate()
        {
            String oldDate = getData();
            String day = oldDate.substring(0,2);
            String months = oldDate.substring(3,5);
            String year = oldDate.substring(6, 10);
            String hour = oldDate.substring( 10, 16  );

            return year + "/" + months + "/" + day + hour;
        }



        @Override
        public String toString() {
            return "aereo.br.usjt.aereo.Voo{" +

                    "nome='" + nome + '\'' +
                    ", destino='" + destino + '\'' +
                    ", valor='" + valor + '\'' +
                    ", dados='" + dados + '\'' +
                    ", qtdeEscalas='" + qtdeEscalas + '\'' +
                    ", data='" + data + '\'' +
                    ", aeronave='" + aeronave + '\'' +
                    ", situacao='" + situacao + '\'' +
                    '}';
        }

        @Override
        public int compareTo(Voo voo) {
            if (nome.equals(voo.getNome())
        && destino.equals(voo.getDestino())
                    && origem.equals(voo.getOrigem())) {
                return 0;
            }
            return this.getNome().compareTo(voo.getNome());
        }

}
