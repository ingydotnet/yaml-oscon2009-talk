// import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.yaml.snakeyaml.Yaml;

class dump_load {
    public static void main(String[] args) {
        Map<String, Object> object1 = new HashMap<String, Object>();
        object1.put("name", "Ingy dot Net");
        object1.put("number", 42);
        object1.put("needs", new String[] { "sex", "drugs", "rock and roll" });

        Yaml yaml = new Yaml();
        String yaml1 = yaml.dump(object1);
        Object object2 = yaml.load(yaml1);
        String yaml2 = yaml.dump(object2);

        if (yaml1.equals(yaml2)) {
            System.out.println(yaml1);
        }
        else {
            System.out.println(yaml1 + "!=\n" + yaml2);
        }
    }
}

