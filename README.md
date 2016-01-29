# bastion-cookbook

This cookbook works only with Amazon Linux and it updates only security packages, OpenSSH client and server packages.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['bastion']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### bastion::default

Include `bastion` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[bastion::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
