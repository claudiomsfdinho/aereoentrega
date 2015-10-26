package aereo.usjt.br.aereo.controller;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import java.util.ArrayList;

import aereo.usjt.br.aereo.R;
import aereo.usjt.br.aereo.model.Voo;
import aereo.usjt.br.aereo.adapter.VooAdapter;

public class VooActivity extends ActionBarActivity {
     ListView listView;
    Activity atividade;
    public final static String VOO = "aereo.usjt.br.aereo.VOO";
    Voo[] voos;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_voo);
        atividade = this;


        //capturando a msg do intent

        Intent intent = getIntent();
        voos = ((ArrayList<Voo>)intent.getSerializableExtra(MainActivity.VOOS)).toArray(new Voo[0]);

        //cria a lista de voos
        listView = (ListView) findViewById(R.id.view_lista_voo);
        VooAdapter adapter = new VooAdapter(this, voos);
        listView.setAdapter(adapter);
        // listener de click em um item do listView


        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {

            @Override
            public void onItemClick(AdapterView<?> parent, View view,
                                    int position, long id) {

                // manda para a tela de completoVoo
                Intent intent = new Intent(atividade, CompletoVooActivity.class);
                intent.putExtra(VOO, voos[position]);

                startActivity(intent);

            }

        });
    }

}
