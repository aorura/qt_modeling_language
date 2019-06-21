import QtQuick 2.0
import QtTest 1.0

TestCase {
    name: "unitest"

//    function test_case1() {
//        compare(1 + 1, 2, "sanity check");
//        verify(true);
//    }

//    function test_math() {
//        compare(2+2, 4, "2+2=4")
//    }

//    function test_fail() {
//        compare(2+2,5,"2+2=5")
//    }

    function init_data() {
        return [
            {tag:"init_data_1", a:1,b:2,answer:3},
            {tag:"init_data_2", a:2,b:4,answer:6}
        ];
    }

    function test_table_data() {
        return [
            {tag:"2+2=4", a:1,b:2,answer:3},
            {tag:"2+6=8", a:2,b:4,answer:6}
        ];
    }


}
