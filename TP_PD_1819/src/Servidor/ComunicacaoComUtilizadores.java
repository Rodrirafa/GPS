package Servidor;

import java.util.Observable;
import java.util.Observer;
// Observer é registado em Observable
// A comunicação com os utilizadores que estão ligados ao servidor é por TCP permanente
// Quando existe uma alteração por parte dum utilizador ligado a outro servidor,
// é necessária uma ligação UDP temporária para notificar os mesmos.


public class ComunicacaoComUtilizadores implements Observer {

    @Override
    public void update(Observable observable, Object o) {

    }

}
