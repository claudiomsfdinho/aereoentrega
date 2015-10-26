package aereo.usjt.br.aereo.controller;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.Toast;

import java.io.IOException;
import java.util.ArrayList;

import aereo.usjt.br.aereo.Network.VooRequester;
import aereo.usjt.br.aereo.R;
import aereo.usjt.br.aereo.model.Voo;

/**
 *
 */
public class MainActivity extends ActionBarActivity {

    Spinner spinnerOrigem;
    Spinner spinnerDestino;
    Button bntBuscar;
    String origem, destino;
    ArrayList<Voo> voos;
    final String servidor = "192.168.0.1.1:8080";
    VooRequester requester;
    ProgressBar mProgress;
    Intent intent;





    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setupViews();
    }

    private void setupViews(){
        destino = "";
        origem = "";
        bntBuscar = (Button) findViewById(R.id.botao_consultar);
        spinnerOrigem = (Spinner) findViewById(R.id.dropdown_origens);
        spinnerOrigem.setOnItemSelectedListener(new OrigemSelecao());
        spinnerDestino = (Spinner) findViewById(R.id.dropdown_destinos);
        spinnerDestino.setOnItemSelectedListener(new DestinoSelecao());
        mProgress.setVisibility(View.INVISIBLE);

    }

    private class DestinoSelecao implements AdapterView.OnItemSelectedListener{

        @Override

        public void onItemSelected(AdapterView <?> parent , View view, int position, long id) {
           destino = (String) parent.getItemAtPosition(position);

        }
        @Override

        public void onNothingSelected(AdapterView<?> parent)
        {

        }

    }



    private class OrigemSelecao implements AdapterView.OnItemSelectedListener{

        @Override

        public void onItemSelected(AdapterView <?> parent , View view, int position, long id) {
            origem = (String) parent.getItemAtPosition(position);

        }
        @Override

        public void onNothingSelected(AdapterView<?> parent)
        {

        }

    }

    //constantes

    public final static String VOOS = "aereo.usjt.br.VOOS";
    public void consultarVoos(View view) {

    final String vooOrigem = this.origem.equals("Selecione a Origem")?"": origem;
        final String vooDestino = this.destino.equals("Selecione o Destino")?"": destino;


         requester = new VooRequester();
        if(requester.isConnected(this)){
            intent = new Intent(this,VooActivity.class);
            mProgress.setVisibility(View.VISIBLE);
            new Thread(new Runnable() {
                @Override
                        public void run(){
                    try{
                        voos = requester.get("http://"+ servidor + "/application.json", vooOrigem, vooDestino);
                        runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                intent.putExtra(VOOS,voos);
                                mProgress.setVisibility(View.INVISIBLE);
                                startActivity(intent);
                            }
                        });
                    } catch (IOException e){
                        e.printStackTrace();
                    }
                }
            }).start();

        } else {
            Toast toast = Toast.makeText(this, "Rede fora do ar", Toast.LENGTH_LONG);
            toast.show();
        }

}
}


