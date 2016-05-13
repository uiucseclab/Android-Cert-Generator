import org.junit.Test;
import sample.Logcat;
import sample.RandomCert;

import static junit.framework.TestCase.assertEquals;

/**
 * Created by Tim on 5/6/16.
 */
public class RandomCertTest {

    @Test
    public void testGetWebsiteUrl() {
        String website = "https://www.google.com/url?q=http:" +
                "//supercell.helpshift.com/a/clash-royale/&amp;" +
                "sa=D&amp;usg=AFQjCNEcjDY02MgHR333A8cRg06Wix3jsA";
        String packageName = "com.supercell.clashroyale";
        String proposedWebsite = RandomCert.getWebsite(packageName);
        Logcat.i(proposedWebsite);
        assertEquals(website, proposedWebsite);

    }


    @Test
    public void testGetDeveloperName() {
        String developerName = "Surpax Inc.";
        String packageName = "com.surpax.ledflashlight.panel";
        String proposedDeveloperName = RandomCert.getDeveloperName(packageName);
        Logcat.i(proposedDeveloperName);
        assertEquals(developerName, proposedDeveloperName);

    }
}
