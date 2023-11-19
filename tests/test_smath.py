from smath import subtract

# setup of any func
def setup_function(function):
    print(f"Running Setup: {function.__name__}")
    function.x = 10

# what is the purpose ?
def teardown_function(function):
    print(f"Running Teardown: {function.__name__}")
    del function.x

def test_hello_subtract():
    assert subtract(test_hello_subtract.x) == 9