package pwd;

public class Calculator {
	private double distance;
	private double rate;
	private double time;
	public double getDisttance() {
		return distance;
	}
	public void setDisttance(double disttance) {
		this.distance = disttance;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public double getTime() {
		return time;
	}
	public void setTime(double time) {
		this.time = time;
	}
	
	public double rate(double time, double distance) {
		return rate = distance / time;
	}
	
	public double distance(double time, double rate) {
		return distance = rate * time;
	}

	public double time(double rate, double distance) {
		return time = distance / rate;
	}

}
