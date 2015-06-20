# electricsheep-hd-client
Early alpha of a client for electric sheep ecosystem which renders frames in HD ( e.g. 720p, 1080p, 4k, 8k)

## Roadmap
- System is fully operational but in an alpha state. So expect [bugs](https://github.com/kochd/electricsheep-hd-client/issues).
- Currently there is no frontend where you can you can see the overall rendering process by the community.
- GPU rendering with CUDA is planned but this need more investigation
## Getting started 
There might be some more. If anything goes wrong let me know

### Debian / Ubuntu / ...
<pre>
git clone https://github.com/kochd/electricsheep-hd-client.git && cd electricsheep-hd-client
apt-get install flam3 ruby bundler
bundle install
./daemon
</pre>

If this results in `./daemon.rb:29:in <main>': You will need a api key. Please register at https://triple6.org:9999/register (RuntimeError)` continue with registration.

### Other Linux / Unix / Posix systems
Currently i dont know. Adept from [Debian / Ubuntu](https://github.com/kochd/electricsheep-hd-client/blob/master/README.md#debian--ubuntu--) and contribute back so others can learn from your wisdom.  

## Registration
Register [here](https://sheeps.triple6.org:9999/register) and follow the instructions in the email.