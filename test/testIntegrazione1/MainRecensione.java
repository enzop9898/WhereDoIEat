package testIntegrazione1;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDelete.class, TestDoRetrieveAll.class, TestDoRetrieveByKey.class, TestDoRetriveByUser.class,
		TestDoSave.class, TestDoUpdate.class })
public class MainRecensione {

}
