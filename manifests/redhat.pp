# % CMITS - Configuration Management for Information Technology Systems
# % Based on <https://github.com/afseo/cmits>.
# % Copyright 2015 Jared Jennings <mailto:jjennings@fastmail.fm>.
# %
# % Licensed under the Apache License, Version 2.0 (the "License");
# % you may not use this file except in compliance with the License.
# % You may obtain a copy of the License at
# %
# %    http://www.apache.org/licenses/LICENSE-2.0
# %
# % Unless required by applicable law or agreed to in writing, software
# % distributed under the License is distributed on an "AS IS" BASIS,
# % WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# % See the License for the specific language governing permissions and
# % limitations under the License.
class umask::redhat($shell_processes, $user_processes, $system_processes) {
# The umask for system processes is taken care of by the init system
# (\verb!/sbin/service! or \verb!systemd!). So we ignore
# \verb!$system_processes!.
#
# Every user process on a Red Hat system is started from a shell at
# some point, so we ignore \verb!$user_processes!.

    class { 'umask::shell':
        umask => $shell_processes,
    }
}
