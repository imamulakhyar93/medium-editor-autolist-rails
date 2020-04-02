# Autolist Extension for [Medium Editor](https://github.com/yabwe/medium-editor)

[Varun Raj](https://github.com/varun-raj) developed an extention that automatically converts ( 1. <kbd>Space</kbd> ) to ordered list and ( \* <kbd>Space</kbd> ) to unordered list if the corresponding base extensions are enabled.

# Insert Plugin for Rails

This gem integrates [Medium Editor Autolist Extension](https://github.com/varun-raj/medium-editor-autolist) with Rails asset pipeline.

## Installation

Include **medium_editor/insert_plugin** in your Rails project's Gemfile:

```ruby
gem 'medium-editor-rails'
gem 'medium-editor-autolist-rails'
```

And then execute:

```bash
bundle install
bundle exec rake insert_plugin:update
```

## Configuration

Include javascript file in **app/assets/javascripts/application.js**:

```javascript
//= require medium-editor
//= require medium-editor-autolist.min
```

## Using Medium Editor with Rails

You need to initialize Autolist, then assign the extention in `extensions`'s option. for example:

```html
<script>
  var autolist = new AutoList();
  var editor = new MediumEditor('.editable', {
    ...,
    extensions: {
      ...,
      'autolist': autolist
    },
  });
</script>
```

Restart your app.

## Contributing

1. Fork it ( https://github.com/imamulakhyar93/medium-editor-autolist-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
