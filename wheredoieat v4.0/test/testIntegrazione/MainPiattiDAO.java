package testIntegrazione;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDeletePiatti.class, TestDoRetrieveAllPiatti.class, TestDoRetrieveByAttivitaPiatti.class,
		TestDoRetrieveByKeyPiatti.class, TestDoSavePiatti.class, TestDoUpdatePiatti.class })
public class MainPiattiDAO {

}
