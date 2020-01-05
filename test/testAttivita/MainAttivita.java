package testAttivita;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDelete.class, TestDoRetrieveByMediaVal.class, TestDoSave.class, TestDoUpdate.class, TestDoRetrieveAll.class, TestDoRetrieveByKey.class })
public class MainAttivita {

}
