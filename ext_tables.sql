#
# Table structure for table 'tx_tmcloudfront_domain_model_invalidation'
#
CREATE TABLE tx_tmcloudfront_domain_model_invalidation
(

	uid              int(11) NOT NULL auto_increment,
	pid              int(11) DEFAULT '0' NOT NULL,

	pathsegment      text,
	distributionId   VARCHAR(255),
	id               VARCHAR(255),

	tstamp           int(11) unsigned DEFAULT '0' NOT NULL,
	crdate           int(11) unsigned DEFAULT '0' NOT NULL,
	deleted          smallint(5) unsigned DEFAULT '0' NOT NULL,
	hidden           smallint(5) unsigned DEFAULT '0' NOT NULL,
	starttime        int(11) unsigned DEFAULT '0' NOT NULL,
	endtime          int(11) unsigned DEFAULT '0' NOT NULL,

	t3ver_oid        int(11) DEFAULT '0' NOT NULL,
	t3ver_id         int(11) DEFAULT '0' NOT NULL,
	t3ver_wsid       int(11) DEFAULT '0' NOT NULL,
	t3ver_label      varchar(255) DEFAULT '' NOT NULL,
	t3ver_state      smallint(6) DEFAULT '0' NOT NULL,
	t3ver_stage      int(11) DEFAULT '0' NOT NULL,
	t3ver_move_id    int(11) DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent      int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource  mediumblob,
	l10n_state       text,

	PRIMARY KEY (uid),
	KEY              parent (pid),
	KEY              t3ver_oid (t3ver_oid,t3ver_wsid),
	KEY language (l10n_parent,sys_language_uid)

);
