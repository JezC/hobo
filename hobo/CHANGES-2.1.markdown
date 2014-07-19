Hobo 2.1 Changes
{: .document-title}

Documents the changes made in Hobo 2.1 and the changes required to
migrate applications to Hobo 2.1

Contents
{: .contents-heading}

- contents
{:toc}

# Updating from a Hobo 2.0 application to Hobo 2.1

    Meta tags:  note for collaborators.   A meta-tag looks like this {.done}.   It's added after a paragraph with no blank spaces.   The tags that we support are:  {.ruby} {.javascript} {.dryml} and {.diff} for code highlighting.   {.todo}, {.done}, {.check}, {.part} and {.nomove} indicate documentation progress moving into the Hobo manuals.  {.check} means that it's probably done.  {.part} means that it's partly done.  {.nomove} means that this section only needs to exist in this CHANGES document.   Finally, {.hidden} is used for paragraphs like this one that shouldn't show up on the website.
{.hidden}

{.nomove}

Many of the changes required in upgrading a Hobo 2.0 application are necessitated by the switch from Rails 3.2 to 4.0.  [Railscasts has a good guide to upgrading to Rails 4.0](http://railscasts.com/episodes/415-upgrading-to-rails-4).

From Hobo's point of view, you shouldn't need to change almost anything :).

## Gemfile

Now Hobo uses "will\_paginate\_hobo" gem, instead of the git repository "git://github.com/Hobo/will\_paginate.git". This should make it easier to install in systems without Git installed (users have reported problems with Windows and Git).

You also need to add the `protected_attributes` gem to your Gemfile.

# Internal changes

In order to make Hobo compatible with Rails 4, these are the main changes that have been done:

## Routing

* `url_for` does not accept parameters any more
* Remove deprecated routes system
* `match` is no longer accepted in routes.rb, it has been replaced by "get" and "post"

## ActiveRecord

* `Model.find(:all)` is deprecated
* `finder.scoped :conditions => conditions` has been replaced with `finder.where(conditions)`
* raise\_on\_type\_mismatch has been renamed to raise\_on\_type\_mismatch!

## Other
* `protected_attributes` gem has been added to support the "old" way of protecting attributes
* Domizio has made Hobo thread safe :)
* Hobo's custom `will_paginate` has been packaged into the `hobo_will_paginate` gem. This should make possible to install Hobo without Git (it seems to be a bit hard under Windows).
* Minimum required version of Rails for Hobo 2.1.1 is 4.0.2; recommended is 4.0.8
* Minimum version of Ruby that should work is MRI 1.9.3; recommended is MRI 2.1.2

# Running the integration tests:

The integration tests in the "agility\_bootstrap" folder have been updated for Hobo 2.1 and Rails 4.

see https://github.com/Hobo/hobo/blob/master/integration\_tests/agility\_bootstrap/README
