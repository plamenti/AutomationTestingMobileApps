package smoke;

import base.BaseTest;
import org.testng.Assert;
import org.testng.annotations.Test;

public class OperationTests extends BaseTest {

    @Test
    public void sum1() {
        this.calc.clickNumber("1");
        this.calc.performOperation("plus");
        this.calc.clickNumber("2");
        this.calc.performOperation("equals");
        Assert.assertEquals(this.calc.getResult(), "3", "Sum is not correct.");
    }

    @Test
    public void sum2() {
        this.calc.clickNumber("1");
        this.calc.performOperation("plus");
        this.calc.clickNumber("1");
        this.calc.performOperation("equals");
        Assert.assertEquals(this.calc.getResult(), "2", "Sum is not correct.");
    }
}
