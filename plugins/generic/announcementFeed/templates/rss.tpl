{**
 * plugins/generic/announcementFeed/templates/rss.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * RSS feed template
 *
 *}
<?xml version="1.0" encoding="{$defaultCharset|escape}"?>
<rdf:RDF
	xmlns:rdf="https://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns="https://purl.org/rss/1.0/"
	xmlns:dc="https://purl.org/dc/elements/1.1/"
	xmlns:prism="https://prismstandard.org/namespaces/1.2/basic/">

	<channel rdf:about="{url journal=$journal->getPath()}">
		{* required elements *}
		<title>{$journal->getLocalizedName()|strip|escape:"html"}: {translate key="announcement.announcements"}</title>
		<link>{url journal=$journal->getPath()}</link>
		{if $journal->getLocalizedDescription()}
			{assign var="description" value=$journal->getLocalizedDescription()}
		{elseif $journal->getLocalizedData('searchDescription')}
			{assign var="description" value=$journal->getLocalizedData('searchDescription')}
		{/if}
		<description>{$description|strip|escape:"html"}</description>

		{* optional elements *}
		{if $journal->getPrimaryLocale()}
		<dc:language>{$journal->getPrimaryLocale()|replace:'_':'-'|strip|escape:"html"}</dc:language>
		{/if}

		<items>
			{foreach from=$announcements item=announcement}
			<rdf:Seq>
				<rdf:li rdf:resource="{url page="announcement" op="view" path=$announcement->getId()}"/>
			</rdf:Seq>
			{/foreach}
		</items>
	</channel>

{foreach from=$announcements item=announcement}
	<item rdf:about="{url page="announcement" op="view" path=$announcement->getId()}">
		{* required elements *}
		<title>{$announcement->getLocalizedTitleFull()|strip|escape:"html"}</title>
		<link>{url page="announcement" op="view" path=$announcement->getId()}</link>

		{* optional elements *}
		{if $announcement->getLocalizedDescription()}
		<description>{$announcement->getLocalizedDescription()|strip|escape:"html"}</description>
		{/if}
		<dc:creator>{$journal->getLocalizedName()|strip|escape:"html"}</dc:creator>
		<dc:date>{$announcement->getDatePosted()|date_format:"%Y-%m-%d"}</dc:date>
	</item>
{/foreach}

</rdf:RDF>
