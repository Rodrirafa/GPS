package Cliente;

import java.util.Observable;
import java.util.Observer;

public class VistaCliente implements Observer {

    ComunicacaoComServidor comunicacaoComServidor;
    TransferenciaFicheiros transferenciaFicheiros;

    public VistaCliente(ComunicacaoComServidor comunicacaoComServidor,TransferenciaFicheiros transferenciaFicheiros) {

        this.comunicacaoComServidor = comunicacaoComServidor;
        this.transferenciaFicheiros = transferenciaFicheiros;
        comunicacaoComServidor.addObserver(this);
        transferenciaFicheiros.addObserver(this);

    }

    @Override
    public void update(Observable observable, Object o) {

    }
}
