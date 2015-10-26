package aereo.usjt.br.aereo.Util;

import android.widget.ImageView;
import android.widget.TextView;

/**
 * Created by Claudio Miranda on 20/09/2015.
 */
public class ViewHolder {

    private ImageView imagemV;
    private TextView nomeVoo, detalhesVoo;

    public ViewHolder(ImageView imagemV, TextView nomeVoo, TextView detalhesVoo) {
        this.imagemV = imagemV;
        this.nomeVoo = nomeVoo;
        this.detalhesVoo = detalhesVoo;
    }

    public ImageView getImagemV() {
        return imagemV;
    }

    public void setImagemVa(ImageView imagemV) {
        this.imagemV = imagemV;
    }

    public TextView getNomeVoo() {
        return nomeVoo;
    }

    public void setNomeVoo(TextView nomeVoo) {
        this.nomeVoo = nomeVoo;
    }

    public TextView getDetalhesVoo() {
        return detalhesVoo;
    }

    public void setDetalhesVoo(TextView detalhesVoo) {
        this.detalhesVoo = detalhesVoo;
    }
}

