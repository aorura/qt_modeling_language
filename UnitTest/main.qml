import QtQuick 2.12
import QtTest 1.2

TestCase {
    name: "DataTests"
    function init_data {
        return [
            {tag:"init_data_1", a:1,b:2,answer:3},
            {tag:"init_data_2", a:2,b:4,answer:6}
        ];
    }
