module DataCLI
  def self.bar(p, width=40)
    p = 0 if p.nan?
    bars = (p * 40).to_i.clamp(0, 40)
    remain = 40 - bars

    bars_str = "\e[0;39;47m" + (' ' * bars) + "\e[0m"
    empty_str = (' ' * remain)
    '[' + bars_str + empty_str + ']'
  end

  def self.percent(p)
    ("#{(p * 100).to_i}%").to_s
  end
end
