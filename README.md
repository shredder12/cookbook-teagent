teagent Cookbook
=========================
This cookbook installs and configures the ThousandEyes private agent.

Platform
--------
- Debian 6 (squeeze) 
- Ubuntu 10.04 (lucid) and 12.04 (precise)
- CentOS 6.3+
- Red Hat 6.3+

Requirements
------------
Debian/Ubuntu Linux distributions require the `lsb-release` package which  
will be installed if missing.

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['teagent']['browserbot']</tt></td>
    <td>Boolean</td>
    <td>Enable Browserbot</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['teagent']['international_langs']</tt></td>
    <td>Boolean</td>
    <td>install the international language support package</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['teagent']['account_token']</tt></td>
    <td>String</td>
    <td>Account token for the agent</td>
    <td><tt>sample value (equals a disabled agent)</tt></td>
  </tr>
  <tr>
    <td><tt>['teagent']['log_path']</tt></td>
    <td>String</td>
    <td>Agent log path</td>
    <td><tt>''</tt></td>
  </tr>
  <tr>
    <td><tt>['teagent']['proxy_host']</tt></td>
    <td>String</td>
    <td>Proxy hostname</td>
    <td><tt>''</tt></td>
  </tr>
  <tr>
    <td><tt>['teagent']['proxy_port']</tt></td>
    <td>String</td>
    <td>Proxy port</td>
    <td><tt>'0'</tt></td>
  </tr>
  <tr>
    <td><tt>['teagent']['ip_version']</tt></td>
    <td>String</td>
    <td>Ip version for the agent to run with ('ipv4' or 'ipv6')</td>
    <td><tt>'ipv4'</tt></td>
  </tr>
</table>

Usage
-----
#### teagent::default
Just include `teagent` in your node's `run_list`:
Don't forget to set the attributes based on your use case.

 * Default settings
 ```
 {
     "teagent": {
         "account_token": "your_account_token_goes_here",
     },
     "run_list": ["recipe[teagent]" ] 
 }
 ```

 * Enable browserbot
 ```
 {
     "teagent": {
         "browserbot": true,
         "account_token": "your_account_token_goes_here",
     },
     "run_list": ["recipe[teagent]" ]
 }  
 ```

 * Enable browserbot and install the international language packages
 ```
 {
     "teagent": {
         "browserbot": true,
         "international_langs": true,
         "account_token": "your_account_token_goes_here",
     },
     "run_list": ["recipe[teagent]" ]
 }
 ```

 * Set the log path location
 ```
 {
     "teagent": {
         "account_token": "your_account_token_goes_here",
         "log_path": "/var/log",
     },
     "run_list": ["recipe[teagent]" ]
 }
 ```

 * Set the proxy (http proxy, no auth)
 ```
 {
     "teagent": {
         "account_token": "your_account_token_goes_here",
         "proxy_host": "proxy.example.com",
         "proxy_port": "8080",
     },
     "run_list": ["recipe[teagent]" ]
 }
 ```

 * Set the ThousandEyes private agent to run with an IPv6 address
 ```
 {
     "teagent": {
         "account_token": "your_account_token_goes_here",
         "ip_version": "ipv6",
     },
     "run_list": ["recipe[teagent]" ]
 }
 ```

Alternatively Include the teagent recipe to install the ThousandEyes private 
agent. The only recipe you need to include is the default one.

* `include_recipe 'teagent'`

License and Authors
-------------------
## License
This program is free software: you can redistribute it and/or modify  
it under the terms of the GNU General Public License as published by  
the Free Software Foundation, either version 3 of the License, or  
(at your option) any later version.

This program is distributed in the hope that it will be useful,  
but WITHOUT ANY WARRANTY; without even the implied warranty of  
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  
GNU General Public License for more details.  

You should have received a copy of the GNU General Public License  
along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Contact
If you have questions or comments, please send them to  
opensource+chef@thousandeyes.com, or to the following address:

ThousandEyes, Inc.  
301 Howard Street #1320  
San Francisco, CA  94105  
Attn: ThousandEyes Open Source Projects
