package testIntegrazione;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDelete.class, TestDoRetrieveAll.class, TestDoRetrieveByAttivita.class, TestDoRetrieveByKey.class,
		TestDoRetrieveGroupby.class, TestDoSave.class, TestDoUpdate.class })
public class MainFotoDAO {

}
