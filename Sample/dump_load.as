package {
    import flash.display.Sprite;
    import flash.text.TextField;
    import org.as3yaml.YAML;
    
    public class dump_load extends Sprite {
        public function dump_load() {
            var field:TextField = new TextField();
            field.multiline = true;
            addChild(field);

            field.text = 'Testing ActionScript YAML';
            
            var object1:Object = {
                'name': 'Ingy dot Net',
                'number': 42,
                'needs': [
                    'sex',
                    'drugs',
                    'rock and roll'
                ]
            };

            var yaml1:String = YAML.encode(object1);
            var object2:Object = YAML.decode(yaml1);
            var yaml2:String = YAML.encode(object2);

            if (yaml1 == yaml2) {
                field.text = yaml1;
            }
            else {
                field.text = yaml1 + "!=\n" + yaml2;
            }
        }
    }
}
