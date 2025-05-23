FROM python:3.12-slim
WORKDIR /app
RUN pip install uv
COPY pyproject.toml uv.lock ./
RUN uv pip install --system .
COPY research_server_remote.py .
EXPOSE 8001
CMD ["uv", "run", "research_server_remote.py"]