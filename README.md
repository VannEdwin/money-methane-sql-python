{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyNOaktDWptWy5oWx6lDgNeF",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/VannEdwin/money-methane-sql-python/blob/main/README.md\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": 3,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "WuLw8I96jJoB",
        "outputId": "35a09b53-0a20-4efd-eaad-44b4dd299cec"
      },
      "outputs": [
        {
          "output_type": "execute_result",
          "data": {
            "text/plain": [
              "29"
            ]
          },
          "metadata": {},
          "execution_count": 3
        }
      ],
      "source": [
        "import os\n",
        "\n",
        "paths = [\n",
        "    \"data/raw\",\n",
        "    \"data/processed\",\n",
        "    \"notebooks\",\n",
        "    \"sql\",\n",
        "    \"src\",\n",
        "]\n",
        "for p in paths:\n",
        "  os.makedirs(p, exist_ok=True)\n",
        "\n",
        "open(\"sql/schema.sql\", \"w\").write(\"-- SQL schema goes here\\n\")\n",
        "open(\"src/db_utils.py\", \"w\").write(\"# Database utilities will go here\\n\")\n",
        "open(\"README.md\", \"w\").write(\"# Money & Methane (SQL + Python \\n\")\n",
        "open(\"requirements.txt\", \"w\").write(\"pandas\\nsqlalchemy\\nmatplotlib\\n\")\n"
      ]
    }
  ]
}