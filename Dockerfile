FROM 'barichello/godot-ci:mono-4.1.1'

RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
RUN chmod +x ./dotnet-install.sh
RUN ./dotnet-install.sh --version latest
ENV PATH="$PATH:/root/.dotnet"
RUN mv /root/.local/share/godot/templates /root/.local/share/godot/export_templates
