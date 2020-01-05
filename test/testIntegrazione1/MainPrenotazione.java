package testIntegrazione1;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDeletePrenotazione.class, TestDoRetrieveAllPrenotazione.class,
		TestDoRetrieveByKeyPrenotazione.class, TestDoRetrieveByOraPrenotazione.class,
		TestDoRetrieveByUserPrenotazione.class, testDoSavePrenotazione.class, TestDoUpdatePrenotazione.class })
public class MainPrenotazione {

}
