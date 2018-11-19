package Cliente;

import java.net.DatagramSocket;
import java.net.Socket;
import java.util.Observable;

// A comunicação com o servidor ao qual o cliente está ligado é por TCP permanente
// Quando existe uma alteração por parte dum utilizador ligado a outro servidor,
// é necessária uma ligação UDP temporária para notificar os mesmos.

public class ComunicacaoComServidor extends Observable {

    Socket socketServidor;
    DatagramSocket socketServidorTemporario;
    //List <Observer> l = new ArrayList<>();

    public ComunicacaoComServidor(Socket socketServidor){

        this.socketServidor = socketServidor;

    }

}
