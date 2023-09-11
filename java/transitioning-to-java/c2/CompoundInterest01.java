import java.text.NumberFormat;

public class CompoundInterest01 {
    private final double principal = 100.0;
    private final double annualInterestRate = 0.05;
    private final double compoundPerTimeUnit = 12.0;
    private final double time = 5.0;
    private final NumberFormat currencyFormat;
    private final NumberFormat percentFormat;

    //this is probably the constructor
    public CompoundInterest01() {
        currencyFormat = NumberFormat.getCurrencyInstance();
        percentFormat = NumberFormat.getPercentInstance();
        percentFormat.setMinimumFractionDigits(0);
        percentFormat.setMaximumFractionDigits(5);
    }

    public void perform() {
        var result = calculateCompoundInterest();

        System.out.printf("If you deposit %s in a savings account " + "that pays %s annual interest compounded monthly%n" + "you will have after %1.0f years %s", currencyFormat.format(principal), percentFormat.format(annualInterestRate), time, currencyFormat.format(result));
    }

    private double calculateCompoundInterest() {
        return principal * Math.pow(1 + annualInterestRate / compoundPerTimeUnit, time * compoundPerTimeUnit);
    }

    //question: a main method is a must inside a java class?
    public static void main(String[] args) {
        var banker = new CompoundInterest01();
        banker.perform();
    }
}