package testPersona;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import testAttivita.TestDoRetrieveByKey;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDelete.class, TestDoRetrieveAll.class, TestDoRetrieveByEmail.class, TestDoRetrieveByLogin.class,
		TestDoSave.class, TestDoUpdate.class, TestDoRetrieveByKey.class })
public class MainPersona {

}
