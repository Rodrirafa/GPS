package Servidor;

import java.net.DatagramSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

// Observer é registado em Observable
// A comunicação com os utilizadores que estão ligados ao servidor é por TCP permanente
// Quando existe uma alteração por parte dum utilizador ligado a outro servidor,
// é necessária uma ligação UDP temporária para notificar os mesmos.


public class ComunicacaoComUtilizadores implements Observer {

    List<Socket> socketsClientes;               // Lista de sockets dos clientes ligados a ele.
    DatagramSocket socketTemporarioCliente;     // Socket para avisar outros
    LogicaServidor logicaServidor;

    public ComunicacaoComUtilizadores(LogicaServidor logicaServidor){

        this.logicaServidor = logicaServidor;
        socketsClientes = new ArrayList<>();

    }

    @Override
    public void update(Observable observable, Object o) {

    }

}
