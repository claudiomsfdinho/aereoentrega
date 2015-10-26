package aereo.usjt.br.aereo.controller;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

import aereo.usjt.br.aereo.Network.VooRequester;
import aereo.usjt.br.aereo.R;
import aereo.usjt.br.aereo.Util.Util;
import aereo.usjt.br.aereo.model.Voo;

/**
 * Created by Claudio Miranda on 20/09/2015.
 */
public class CompletoVooActivity extends ActionBarActivity {

    TextView vooNome;
    ImageView vooImageView;
    TextView vooValor;
    TextView vooDestino;
    TextView vooOrigem;
    TextView vooQdeEscalas;
    VooRequester requester;
    ProgressBar mProgress;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_completo_voo);

        Intent intent = getIntent();
        final Voo v = (Voo)intent.getSerializableExtra(VooActivity.VOO);
        setupViews(v);
        requester = new VooRequester();
        if(requester.isConnected(this)){

            new Thread(new Runnable() { @Override
                                        public void run() {
                try {
                    mProgress.setVisibility(View.VISIBLE);
                    final Bitmap img = requester.getImage(v.getImagem());
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            vooImageView.setImageBitmap(img);
                            mProgress.setVisibility(View.INVISIBLE);
                        }
                    });

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            }).start();
        } else {
            Resources res = getResources();
            Toast toast = Toast.makeText(this, "Rede indisponível!", Toast.LENGTH_LONG);
            toast.show();
        }

    }


    private void setupViews(Voo voo) {
        vooNome = (TextView) findViewById(R.id.txt_voo_nome);
        vooNome.setText(voo.getNome());
       vooImageView = (ImageView) findViewById(R.id.voo_image_view);
        Drawable drawable = Util.getDrawable(this, voo.getImagem());
        vooImageView.setImageDrawable(drawable);
        vooValor = (TextView) findViewById(R.id.txt_voo_valor);
        Locale locale = new Locale("pt", "BR");
        NumberFormat formatter = NumberFormat.getCurrencyInstance(locale);
        vooValor.setText(""+formatter.format(voo.getValor()));
        vooDestino = (TextView) findViewById(R.id.txt_voo_destino);
        vooDestino.setText(voo.getDestino());
        vooOrigem = (TextView) findViewById(R.id.txt_voo_origem);
        vooOrigem.setText(voo.getOrigem());
        mProgress = (ProgressBar) findViewById(R.id.carregando_voo);
        mProgress.setVisibility(View.INVISIBLE);


    }



}
