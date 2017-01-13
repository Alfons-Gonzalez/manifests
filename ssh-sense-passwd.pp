#
# SSH sense passwd
# afegim les claus ssh per a que root@moebius pugui entrar sense passwd
ssh_authorized_key { 'root@moebius.prib.upf.edu':
        user => 'root',
        type => 'ssh-rsa',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEApjAuF5vTvQzvUHWv2QmHjeIg/Y9fEQKpX1IOGRC4QclD7uD1MwHlGOJE28R8MIU/3cKHuZGYsyn1GnwmV18LHzWsX1A7jLWEJ8Lns/7pT1rYpGLNipszI+Yb3dHislJNmD+DYIeICuI76q+nR5gA19iZ/9CUGt4xc8BGnvaL7qiEk1F70JPoLGSM04u+LTFTXvg45JzAVXAfnduZI67WJ0b+GC3swPYPp1sbVbMvegzrgHUVRoxannuRMhGCk0SmPksVfhtbawm56JQGVW5W7wKic5XuXhXpTa4B+vitq8TT0JOrUaLRu7yZ5vY3JLhEBCj4GBygUMl8wARQjEkZew==',
        }
#


