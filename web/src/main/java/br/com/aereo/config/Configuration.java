package br.com.aereo.config;

import br.com.aereo.config.DatabaseDriverType;

public class Configuration {

    private static final DatabaseDriverType selectedDriver = DatabaseDriverType.MYSQL;

    public static DatabaseDriverType getSelectedDatabaseDriver() {
        return Configuration.selectedDriver;
    }
}
