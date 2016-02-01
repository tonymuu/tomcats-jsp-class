package ps;
import java.util.HashMap;

public class Password {
	private String usr;
	private String pwd;
	
	private static HashMap<String, String> combos = new HashMap(); 
	
	public Password(String usr, String pwd) {
		combos.put("a", "aaa");
		combos.put("b", "bbb");
		combos.put("c", "ccc");
		
		this.usr = usr;
		this.pwd = pwd;
	}
	
	public boolean isPasswordValid() {
		if (combos.containsKey(this.usr)) {
			if (combos.get(this.usr).equals(this.pwd)) {
				return true;
			}
			return false;
		}
		return false;
	}
}
