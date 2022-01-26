CREATE TABLE `sap_process_order_confirmation_batch_characteristic_data`
(  
    `Batch`                varchar(10) NOT NULL,
    `OrderID`              varchar(10) DEFAULT NULL,
    `ConfirmationGroup`    varchar(10) DEFAULT NULL,
	`ConfirmationCount`    varchar(8) DEFAULT NULL,
    `MaterialDocument`     varchar(10) DEFAULT NULL,
    `MaterialDocumentItem` varchar(4) DEFAULT NULL,
    `MaterialDocumentYear` varchar(4) DEFAULT NULL,
    `Plant`                varchar(4) DEFAULT NULL,
    `Material`             varchar(40) DEFAULT NULL,
    `CharcInternalID`      varchar(10) DEFAULT NULL,
    `Characteristic`       varchar(30) DEFAULT NULL,
    `CharcValue`           varchar(70) DEFAULT NULL,
    PRIMARY KEY (`Batch`),
    CONSTRAINT `SAPProcessOrderConfirmationBatchCharacteristicData_fk` FOREIGN KEY (`OrderID`) REFERENCES `sap_process_order_confirmation_confirmation_data`(`OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;