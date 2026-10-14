PROJECT OVERVIEW
The deploy_agent.sh shell script bootstraps the Student Attendance Tracker workspace. It builds the directory structure, generates the source files, configures attendance thresholds via sed, validates the environment, secures configuration permissions, and cleans up safely if the user cancels mid-run.

HOW TO RUN
Use the command: ./deploy_agent.sh OR bash deploy_agent.sh
The script will then prompt you for: an environment tag suffix, whether you want to use the template roster or generate a custom mock roster, and custom warning/failure threshold percentages.

HOW TO RUN THE GENERATED APP
Use the command: python3 attendance_checker.py (after navigating into your generated environment directory). This reads Helpers/assets.csv, applies the thresholds in Helpers/config.json, and writes logs to reports/.

HOW TO TRIGGER THE ARCHIVE FEATURE
While the script is running, press Ctrl+C or Ctrl+Z to invoke the emergency signal trap and compress partial states. Alternatively, you can use option 3 in the main menu to archive historical logs.

THIS IS THE LINK TO MY VIDEO https://drive.google.com/file/d/1vFe1OHviYI4H8uKWi5Moibxh3XiMSsO5/view?usp=sharing

HOW TO READ THE ARCHIVE
The archive is a compressed binary file. Do not open it in a text editor, it will look like scrambled symbols. Use zip or tar instead. The commands you can use are:
unzip attendance_tracker_{tag}_archive.zip   # extract zip archive
tar -tzf attendance_tracker_{tag}_archive.tar.gz  # list contents
tar -xzf attendance_tracker_{tag}_archive.tar.gz  # extract it back
