function bl
    set brightness (math "$argv[1] * 75")
    echo $brightness | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null
end
