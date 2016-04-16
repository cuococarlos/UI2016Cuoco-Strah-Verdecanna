package gatoEncerradoExceptions

import org.uqbar.commons.model.UserException

class NombreYaExistenteException extends UserException{
	
	new(String message) {
		super(message)
	}
	
}