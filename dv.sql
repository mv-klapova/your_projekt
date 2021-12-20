
CREATE TABLE `hub_buyer` (
  `ID` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `hub_buylog` (
  `ID` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `hub_committee` (
  `ID` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `hub_deliverylog` (
  `ID` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `hub_jewelry` (
  `ID` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `link_buyer_buylog` (
  `ID` int(5) NOT NULL,
  `ID_buyer` int(5) NOT NULL,
  `ID_buylog` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `link_committee_deliverylog` (
  `ID` int(5) NOT NULL,
  `ID_committee` int(5) NOT NULL,
  `ID_deliverylog` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `link_jewelry_buylog` (
  `ID` int(5) NOT NULL,
  `ID_jewelry` int(5) NOT NULL,
  `ID_buylog` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `link_jewelry_deliverylog` (
  `ID` int(5) NOT NULL,
  `ID_deliverylog` int(5) NOT NULL,
  `ID_jewelry` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `satellite_buyer` (
  `ID` int(5) NOT NULL,
  `ID_buyer` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phonenumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `satellite_buylog` (
  `ID` int(5) NOT NULL,
  `ID_buylog` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL,
  `cost` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `satellite_committee` (
  `ID` int(5) NOT NULL,
  `ID_committee` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone number` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `satellite_deliverylog` (
  `ID` int(5) NOT NULL,
  `ID_deliverylog` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` int(100) NOT NULL,
  `cost` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `satellite_jewelry` (
  `ID` int(5) NOT NULL,
  `ID_jewelry` int(5) NOT NULL,
  `dataload` date NOT NULL,
  `source` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `hub_buyer`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `hub_buylog`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `hub_committee`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `hub_deliverylog`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `hub_jewelry`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `link_buyer_buylog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_buyer` (`ID_buyer`,`ID_buylog`),
  ADD KEY `link_buyer_buylog_ibfk_2` (`ID_buylog`);


ALTER TABLE `link_committee_deliverylog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_committee` (`ID_committee`,`ID_deliverylog`),
  ADD KEY `link_committee_deliverylog_ibfk_2` (`ID_deliverylog`);


ALTER TABLE `link_jewelry_buylog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_jewelry` (`ID_jewelry`,`ID_buylog`),
  ADD KEY `ID_buylog` (`ID_buylog`);


ALTER TABLE `link_jewelry_deliverylog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_deliverylog` (`ID_deliverylog`,`ID_jewelry`),
  ADD KEY `link_jewelry_deliverylog_ibfk_2` (`ID_jewelry`);


ALTER TABLE `satellite_buyer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_buyer` (`ID_buyer`);


ALTER TABLE `satellite_buylog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_buylog` (`ID_buylog`);


ALTER TABLE `satellite_committee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_committee` (`ID_committee`);


ALTER TABLE `satellite_deliverylog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_deliverylog` (`ID_deliverylog`);

ALTER TABLE `satellite_jewelry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_jewelry` (`ID_jewelry`);


ALTER TABLE `hub_buyer`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `hub_buylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `hub_committee`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `hub_deliverylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `hub_jewelry`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `link_buyer_buylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `link_jewelry_buylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `link_jewelry_deliverylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `satellite_buyer`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `satellite_buylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `satellite_committee`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `satellite_deliverylog`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;


ALTER TABLE `satellite_jewelry`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `link_buyer_buylog`
  ADD CONSTRAINT `link_buyer_buylog_ibfk_1` FOREIGN KEY (`ID_buyer`) REFERENCES `hub_buyer` (`ID`),
  ADD CONSTRAINT `link_buyer_buylog_ibfk_2` FOREIGN KEY (`ID_buylog`) REFERENCES `hub_buylog` (`ID`);


ALTER TABLE `link_committee_deliverylog`
  ADD CONSTRAINT `link_committee_deliverylog_ibfk_1` FOREIGN KEY (`ID_committee`) REFERENCES `hub_committee` (`ID`),
  ADD CONSTRAINT `link_committee_deliverylog_ibfk_2` FOREIGN KEY (`ID_deliverylog`) REFERENCES `hub_deliverylog` (`ID`);


ALTER TABLE `link_jewelry_buylog`
  ADD CONSTRAINT `link_jewelry_buylog_ibfk_1` FOREIGN KEY (`ID_buylog`) REFERENCES `hub_buylog` (`ID`),
  ADD CONSTRAINT `link_jewelry_buylog_ibfk_2` FOREIGN KEY (`ID_jewelry`) REFERENCES `hub_jewelry` (`ID`);


ALTER TABLE `link_jewelry_deliverylog`
  ADD CONSTRAINT `link_jewelry_deliverylog_ibfk_1` FOREIGN KEY (`ID_deliverylog`) REFERENCES `hub_deliverylog` (`ID`),
  ADD CONSTRAINT `link_jewelry_deliverylog_ibfk_2` FOREIGN KEY (`ID_jewelry`) REFERENCES `hub_jewelry` (`ID`);


ALTER TABLE `satellite_buyer`
  ADD CONSTRAINT `satellite_buyer_ibfk_1` FOREIGN KEY (`ID_buyer`) REFERENCES `hub_buyer` (`ID`);


ALTER TABLE `satellite_buylog`
  ADD CONSTRAINT `satellite_buylog_ibfk_1` FOREIGN KEY (`ID_buylog`) REFERENCES `hub_buylog` (`ID`);


ALTER TABLE `satellite_committee`
  ADD CONSTRAINT `satellite_committee_ibfk_1` FOREIGN KEY (`ID_committee`) REFERENCES `hub_committee` (`ID`);


ALTER TABLE `satellite_deliverylog`
  ADD CONSTRAINT `satellite_deliverylog_ibfk_1` FOREIGN KEY (`ID_deliverylog`) REFERENCES `hub_deliverylog` (`ID`);


ALTER TABLE `satellite_jewelry`
  ADD CONSTRAINT `satellite_jewelry_ibfk_1` FOREIGN KEY (`ID_jewelry`) REFERENCES `hub_jewelry` (`ID`);
COMMIT;
