#
# trema ruby command.
#
# Author: Yasuhito Takamiya <yasuhito@gmail.com>
#
# Copyright (C) 2008-2012 NEC Corporation
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License, version 2, as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#


require "optparse"


module Trema
  module Command
    include Trema::Util


    def ruby
      options = OptionParser.new
      options.banner = "Usage: trema ruby [OPTIONS ...]"

      options.on( "-h", "--help" ) do
        puts options.to_s
        exit 0
      end
      options.on( "-v", "--verbose" ) do
        $verbose = true
      end

      options.parse! ARGV

      sh "x-www-browser http://rubydoc.info/github/trema/trema/master/frames"
    end
  end
end


### Local variables:
### mode: Ruby
### coding: utf-8
### indent-tabs-mode: nil
### End:
