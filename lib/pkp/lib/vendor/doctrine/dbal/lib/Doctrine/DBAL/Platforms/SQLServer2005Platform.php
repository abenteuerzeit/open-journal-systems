<?php

namespace Doctrine\DBAL\Platforms;

/**
 * Platform to ensure compatibility of Doctrine with Microsoft SQL Server 2005 version and
 * higher.
 *
 * Differences to SQL Server 2008 are:
 *
 * - DATETIME2 datatype does not exist, only DATETIME which has a precision of
 *   3. This is not supported by PHP DateTime, so we are emulating it by
 *   setting .000 manually.
 * - Starting with SQLServer2005 VARCHAR(MAX), VARBINARY(MAX) and
 *   NVARCHAR(max) replace the old TEXT, NTEXT and IMAGE types. See
 *   {@link https://www.sql-server-helper.com/faq/sql-server-2005-varchar-max-p01.aspx}
 *   for more information.
 *
 * @deprecated Use SQL Server 2012 or newer
 */
class SQLServer2005Platform extends SQLServerPlatform
{
    /**
     * {@inheritDoc}
     */
    public function supportsLimitOffset()
    {
        return true;
    }

    /**
     * {@inheritDoc}
     */
    public function getClobTypeDeclarationSQL(array $column)
    {
        return 'VARCHAR(MAX)';
    }

    /**
     * {@inheritdoc}
     *
     * Returns Microsoft SQL Server 2005 specific keywords class
     */
    protected function getReservedKeywordsClass()
    {
        return Keywords\SQLServer2005Keywords::class;
    }
}
