(rule (big-boos ?person ?department)
      (and (job ?person (?department . ?type))
           (job ?other (?department . ?type))
           (not (superisor ?person ?other))
           (not (same ?person ?other))))