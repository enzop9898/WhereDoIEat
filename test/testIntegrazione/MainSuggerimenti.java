package testIntegrazione;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ TestDoDeleteSuggerimenti.class, TestDoRetrieveAllSuggerimenti.class,
		TestDoRetrieveByKeySuggerimenti.class, TestDoSaveSuggerimenti.class, TestDoUpdateSuggerimenti.class })
public class MainSuggerimenti {

}
