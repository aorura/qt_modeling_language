
        function findScore() {
            var db = LocalStorage.openDatabaseSync("CatchBeanBirdDB", "1.0", "Catch Bean Bird!", 1000000);
            db.transaction(
                function(tx) {
                    tx.executeSql('CREATE TABLE IF NOT EXISTS game(name TEXT, score INTEGER)');
                    var rs = tx.executeSql('SELECT * FROM game ORDER BY score DESC');
                    var r = ""
                    for(var i = 0; i < 10; i++) {
                        if(i < rs.rows.length)
                            score.model.append({"name": rs.rows.item(i).name, "score": rs.rows.item(i).score});
                        else
                            score.model.append({"name": "Bean Bird", "score": 0});
                    }
                }
            )
        }