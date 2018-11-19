package Cliente;

import java.net.DatagramSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;

//Transferência de ficheiros é realizada com ligação temporária, para os clientes
//que estejam ligados a outros servidores.
//Existe uma ligação permamente entre clientes que estejam ligados ao mesmo Servidor.

// for(Observer o : l)
//  o.update(this,null);  <- Quando se quere chamar update
//
// Lista de interfaces remotas implementadas pelos clientes, para RMI.

public class TransferenciaFicheiros extends Observable {

    Socket socketTransferenciaTemporario;            // socket para enviar/receber ficheiro doutro cliente, que esteja ligado a outro servidor
    List<Socket> socketsClientes;                   // lista de sockets para outros clientes
    //List <Observer> l = new ArrayList<>();

    public TransferenciaFicheiros(){

        socketsClientes = new ArrayList<Socket>();
        socketTransferenciaTemporario = null;

    }

    public void addCliente(Socket socketCliente){

        socketsClientes.add(socketCliente);

    }

    public boolean enviaFicheiro(String nomeFich, String pathname,Socket socketTemporario){

        //...//

        socketTransferenciaTemporario = null;
        return true;

    }

    public boolean recebeFicheiro(String nomeFich, String pathname, Socket socketTemporario){


        //...//

        socketTransferenciaTemporario = null;
        return true;

    }


}
