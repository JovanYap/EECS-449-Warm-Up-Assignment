walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker interactive_walker {
    has input: str;

    can return_message with `root entry {
        if self.input == "hello" {
            report { "response": "Hi there!" };
        } else {
            report { "response": "I don't understand: " + self.input };
        }
    }
}

walker fun_walker {
    has input: str;

    can return_message with `root entry {
        if self.input == "tell me a joke" {
            report { "response": "I told a bad chemistry joke once. It didn't get much of a reaction" };
        } else {
            report { "response": "I don't understand: " + self.input };
        }
    }
}
