FROM minizinc/mznc2026:latest

# Install fzn_picat_sat binary
COPY --chmod=0755 ./fzn_picat_sat /picat_sat/bin/fzn_picat_sat
# Install redefinitions library
COPY ./mznlib /picat_sat/share/minizinc/picat

# Copy and configure the solver configuration file
COPY ./picat.msc.in /picat_sat/share/minizinc/solvers/picat.msc

RUN sed -i 's|MZNLIB_LOCATION|../picat|' /picat_sat/share/minizinc/solvers/picat.msc && \
    sed -i 's|EXECUTABLE_LOCATION|../../../bin/fzn_picat_sat|' /picat_sat/share/minizinc/solvers/picat.msc && \
    echo '{"mzn_solver_path": ["/picat_sat/share/minizinc/solvers"], "tagDefaults": [["", "org.picat-lang.picat"]]}' > $HOME/.minizinc/Preferences.json
