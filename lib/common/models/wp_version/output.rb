# encoding: UTF-8

class WpVersion < WpItem
  module Output

    def output(verbose = false)
      puts green('[+]') + " WordPress version #{self.number} identified from #{self.found_from}"

      vulnerabilities = self.vulnerabilities

      unless vulnerabilities.empty?
        puts
        puts red('[!]') + " #{vulnerabilities.size} vulnerabilities identified from the version number:"

        vulnerabilities.output
      end
    end

  end
end
