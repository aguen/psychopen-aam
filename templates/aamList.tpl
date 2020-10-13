{include file="frontend/components/header.tpl" pageTitleTranslated=$issueIdentification}

<div class="page page_aam">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="plugins.generic.aam.breadcrumb"}
	<h1>{translate key="plugins.generic.aam.headline"}</h1>
	{if empty($aamItems)}
		{include file="frontend/components/notification.tpl" type="warning" messageKey="plugins.generic.aam.help.no.content"}
	{else}
		<div class="cmp_notification info">
			{translate key="plugins.generic.aam.help.content" journalName=$displayPageHeaderTitle|escape}
		</div>
		<ul class="cmp_article_list articles obj_article_summary">
			{foreach from=$aamItems item=aamItem}
				<li>
					<div class="obj_article_summary">
						<h3 class="title">
							{$aamItem['title']|escape}
						</h3>
						<div class="meta">
							<div class="authors">
								{$aamItem['authors']|escape}
							</div>
						</div>
					</div>
					{if isset($aamItem['linkToPsychArchives']) && !empty($aamItem['linkToPsychArchives'])}
						<ul class="galleys_links">
							<li>
								<a class="obj_galley_link" href="{$aamItem['linkToPsychArchives']}" target="_blank" rel="noreferrer">
									{translate key="plugins.generic.aam.link.pa"}
								</a>
							</li>
						</ul>
					{/if}
				</li>
			{/foreach}
		</ul>
	{/if}
	{*{url page="aam"}*}
</div>
{include file="frontend/components/footer.tpl"}
